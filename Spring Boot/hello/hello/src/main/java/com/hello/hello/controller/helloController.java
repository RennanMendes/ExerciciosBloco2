package com.hello.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/hello")
public class helloController {
	
	@GetMapping 
	public String hello(){
		
		return "Persistência, atenção aos detalhes e responsabilidade pessoal";
	}
	
	

}
