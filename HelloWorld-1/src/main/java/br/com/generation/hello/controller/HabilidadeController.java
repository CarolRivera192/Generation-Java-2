package br.com.generation.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HabilidadeController {
	
	@GetMapping ("/habilidade")
	public String habilidade() {
		
		return "Habilidade: Comunicação e atenção aos detalhes";
	}
		
}
