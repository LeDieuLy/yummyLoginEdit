package com.fpt.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fpt.dao.UserDao;
import com.fpt.model.Users;
import com.fpt.service.CurrentUser;
import com.fpt.service.UploadConfig;

@Controller
public class StaticController {

	@Autowired
	UserDao userDaoimpl;


	@Autowired
	ServletContext context;

	@Autowired
	CurrentUser user;
	
	@Autowired
	UploadConfig UploadConfig;




	@GetMapping(value = "/")
	public String index(Model model, HttpSession session) {
		session.setAttribute("user", user.getCurrentUsers());
		return "static/index";
	}
	
	
	@GetMapping(value = "/profile")
	public String profile(ModelMap model) {
		return "static/profile";
	}
	
	

	@PostMapping(value = "/edit-profile")
	public String profileEditProcess(HttpSession session, ModelMap model, @RequestParam("image") MultipartFile image,
			@RequestParam("gender") int gender, @RequestParam("age") int age, @RequestParam("name") String name,
			@RequestParam("birthday") String birthday, @RequestParam("address") String address,
			@RequestParam("bio") String bio) {
		String photo = UploadConfig.uploadImage(model, image);
		String photo2 = photo.equals("") ? user.getCurrentUsers().getImage() : photo;
		if (userDaoimpl.Update(new Users(user.getCurrentUsers().getId(), user.getCurrentUsers().getEmail(), name,
				user.getCurrentUsers().getPassword(), user.getCurrentUsers().getPhone(), age, gender,
				user.getCurrentUsers().getRole(), birthday, address, user.getCurrentUsers().getProvider(), bio, photo2,
				user.getCurrentUsers().getCreated_at(), user.getCurrentUsers().getStatus(),
				user.getCurrentUsers().getBlock_date()))) {
			model.addAttribute("message2", "Cập nhập thông tin thành công.");
			model.addAttribute("class_name", "msg_success");
		} else {
			model.addAttribute("message2", "Cập nhập thông tin thất bại.");
			model.addAttribute("error", "msg_success");
		}

		session.setAttribute("user", user.getCurrentUsers());
		return "static/profile";

	}

	@PostMapping(value = "/change-password")
	public String changepassword(ModelMap model, HttpSession session, @RequestParam("password") String password) {

		if (userDaoimpl.Update(new Users(user.getCurrentUsers().getId(), user.getCurrentUsers().getEmail(),
				user.getCurrentUsers().getFullname(), password, user.getCurrentUsers().getPhone(),
				user.getCurrentUsers().getAge(), user.getCurrentUsers().getGender(), user.getCurrentUsers().getRole(),
				user.getCurrentUsers().getBirthday(), user.getCurrentUsers().getCountry(),
				user.getCurrentUsers().getProvider(), user.getCurrentUsers().getBio(),
				user.getCurrentUsers().getImage(), user.getCurrentUsers().getCreated_at(),
				user.getCurrentUsers().getStatus(), user.getCurrentUsers().getBlock_date()))) {
			model.addAttribute("message", "Thay đổi mật khẩu thành công. ");
			model.addAttribute("class_name", "msg_success");
			return "static/profile";
		} else {
			model.addAttribute("message", "Thay đổi mật khẩu không thành công, vui lòng thử lại . ");
			model.addAttribute("class_name", "msg_error");
			return "static/profile";
		}

	}



	@GetMapping(value = "undefined")
	public String found () {
		return "auth/404";
	}

}
