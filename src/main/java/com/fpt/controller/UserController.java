package com.fpt.controller;

import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpt.dao.UserDao;
import com.fpt.service.CurrentUser;
import com.fpt.service.TwilioMessageCreator;
import com.fpt.service.UploadConfig;

@Controller

@RequestMapping("/admin/")
public class UserController {

	@Autowired
	UserDao userDaoimpl;

	@Autowired
	CurrentUser user;
	

	@Autowired
	TwilioMessageCreator twilioMessageCreator;
	Timestamp timestamp = new Timestamp(System.currentTimeMillis());

	@GetMapping(value = "Dashboard")
	public String dashboard(ModelMap model, HttpSession session) {
		session.setAttribute("user", user.getCurrentUsers());
		return "admin/dashboard";
	}

	@GetMapping(value = "list-user")
	public String list(ModelMap model) {
		model.addAttribute("users", userDaoimpl.filterByStatus(1));
		return "admin/user/list";
	}

	@GetMapping(value = "list-user-block")
	public String block(ModelMap model) {
		model.addAttribute("users", userDaoimpl.filterByStatus(5));
		return "admin/user/block";
	}
	
	@GetMapping(value = "list-user-block/{id}")
	public String block(ModelMap model, @PathVariable("id") int id) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		if (userDaoimpl.setStatus(id, 5, timestamp.toString())) {

			model.addAttribute("users", userDaoimpl.filterByStatus(5));

			try {
				twilioMessageCreator.sendSMS("Tài khoản của bạn đã bị khoá vào lúc:" + timestamp,
						userDaoimpl.findByID(id).getPhone());
				model.addAttribute("msg", "Khoá thành công.");
				model.addAttribute("class_name", "msg_success");
				return "admin/user/block";

			} catch (Exception e) {
				model.addAttribute("class_name", "msg_success");
				model.addAttribute("msg", "Khoá thành công, không thể gửi SMS do số điện thoại chưa xác thực. ");
				return "admin/user/block";

			}

		} else {
			model.addAttribute("msg", "Khoá thất bại.");
			model.addAttribute("class_name", "msg_error");

			return "admin/user/list";
		}
	}
	
	@GetMapping(value = "list-user/{id}")
	public String unlock(ModelMap model, @PathVariable("id") int id) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		if (userDaoimpl.setStatus(id, 1, null)) {

			try {
				twilioMessageCreator.sendSMS("Tài khoản của bạn đã được mở khoá vào lúc:" + timestamp,
						userDaoimpl.findByID(id).getPhone());
				model.addAttribute("users", userDaoimpl.filterByStatus(1));
				model.addAttribute("msg", "Huỷ khoá thành công.");
				model.addAttribute("class_name", "msg_success");
				return "admin/user/list";

			} catch (Exception e) {
				model.addAttribute("users", userDaoimpl.filterByStatus(1));
				model.addAttribute("class_name", "msg_success");
				model.addAttribute("msg", "Bỏ khoá thành công, không thể gửi SMS do số điện thoại chưa xác thực. ");
				return "admin/user/list";

			}

		} else {
			model.addAttribute("msg", "Bỏ khóa thất bại.");
			model.addAttribute("class_name", "msg_error");

			return "admin/user/block";
		}
	}
	
	@GetMapping(value = "edit-profile/{id}")
	public String showProfile(ModelMap model, @PathVariable("id") int id) {

		model.addAttribute("user_detail", userDaoimpl.findByID(id));
		return "admin/user/show";
	}

	@PostMapping(value = "edit-role/{id}")
	public String editRole(ModelMap model, @PathVariable("id") int id, @RequestParam("role") int role) {

		if (userDaoimpl.changeRole(id, role)) {

			model.addAttribute("users", userDaoimpl.filterByStatus(1));
			model.addAttribute("msg", "Uỷ quyền thành công .");
			model.addAttribute("class_name", "msg_success");

			return "admin/user/list";

		} else {
			model.addAttribute("msg", "Uỷ quyền thất bại.");
			model.addAttribute("class_name", "msg_error");

			return "admin/user/list";
		}

	}

}
