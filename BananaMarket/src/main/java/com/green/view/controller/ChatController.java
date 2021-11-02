package com.green.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.dto.MemberVO;


@Controller
public class ChatController {
	
	@RequestMapping(value="/chat_list_form", method=RequestMethod.GET)
	public String chatList(HttpSession session){		
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		} else {
			return "chat/chat_list";  //chat_list.jsp
		}
	}
	

}
