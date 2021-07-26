package br.com.generation.lojagames.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.generation.lojagames.model.CategoriaModel;
import br.com.generation.lojagames.repository.CategoriaRepository;

@RestController //Indica que a classe é a controller(Recebe qualquer requisição HTTP e vai responde-las de acordo com os verbos)
@RequestMapping("/categorias") //Indica um endpoint que vai ser acessado por essa classe(URL)
@CrossOrigin ("*") //Diz que a classe aceita requesições de qualquer origem (Front end)
public class CategoriaController {
	
	@Autowired //Injeção de Dependência, passa o controle para o repository(cria e instancia objetos)
	private CategoriaRepository repository; // acesso ao banco de dados
	
	//========================= Find All ==============================//
	
	@GetMapping
	public ResponseEntity<List<CategoriaModel>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}
	
	//========================= Find By Id ============================//
	
	@GetMapping ("/{id}")
	public ResponseEntity<CategoriaModel> GetById(@PathVariable long id) {
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp)) //ResponseEntity = resposta que ai returna
				.orElse(ResponseEntity.notFound().build());
	}
	
	//===================== Find By Descrição ========================//
	
	@GetMapping ("/descricao/{descricao}")
	public ResponseEntity<List<CategoriaModel>> GetByDescricao(@PathVariable String descricao) {
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(descricao));
	}
	
	//======================= Post Categoria ==========================//
	
	@PostMapping
	public ResponseEntity<CategoriaModel> post (@RequestBody CategoriaModel categoria) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(categoria));
	}
	
	//======================= Put Categoria ==========================//
	
	@PutMapping
	public ResponseEntity<CategoriaModel> put (@RequestBody CategoriaModel categoria) {
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(categoria));
	}
	
	//===================== Delete Categoria ========================//
	
	@DeleteMapping ("/{id}") //O que esta entre chaves é uma variavel
	public void delete(@PathVariable long id) { 
		repository.deleteById(id);
	}
	
}
