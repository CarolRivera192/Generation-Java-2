package br.com.generation.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ObjetivoController {
	
	@GetMapping ("/objetivo")
	public String objetivo() {
		
		return "Entender tudo o que foi passado";
	}

}
