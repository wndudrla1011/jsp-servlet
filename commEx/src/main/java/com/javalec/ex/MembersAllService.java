package com.javalec.ex;

import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MembersAllService implements Service {

	public MembersAllService() {
	}
	
	public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = MemberDAO.getInstance();
		return dao.membersAll();
	}
	
}
