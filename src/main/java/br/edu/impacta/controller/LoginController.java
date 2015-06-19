package br.edu.impacta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.edu.impacta.dao.UsuarioDao;
import br.edu.impacta.model.Usuario;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	@ResponseBody
	public String Login(HttpServletRequest request, HttpServletResponse respose){
		try{
			String userName = request.getParameter("username");
			String passWord = request.getParameter("password");
			
			//Cria objeto 
			Usuario user = new Usuario();
			user.setEmail(userName);
			user.setSenha(passWord);
			
			//Faz a consulta do usuario
			UsuarioDao userDao = new UsuarioDao();
			if(userDao.busca(user).size() > 0){
				HttpSession session = request.getSession();
				session.setAttribute("userName", userName);
				session.setAttribute("passWord", passWord);
				return "Sucesso";
			}else
				return "Sucesso";			

		}catch(Exception e){
			return null;
		}
	}
}