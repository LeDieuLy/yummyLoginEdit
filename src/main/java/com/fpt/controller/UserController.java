package com.fpt.controller;

import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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


	
	

}
