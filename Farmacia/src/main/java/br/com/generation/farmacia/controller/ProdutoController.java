package br.com.generation.farmacia.controller;

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

import br.com.generation.farmacia.model.Produto;
import br.com.generation.farmacia.repository.ProdutoRepository;

@RestController //Indica que a classe é a controller(Recebe qualquer requisição HTTP e vai responde-las de acordo com os verbos)
@RequestMapping ("/produtos")
@CrossOrigin ("*")
public class ProdutoController {

	@Autowired //Injeção de Dependência, passa o controle para o repository(cria e instancia objetos)
	private ProdutoRepository repository; // acesso ao banco de dados
	
	//========================= Find All ==============================//
	
	@GetMapping
	public ResponseEntity<List<Produto>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}
	
	//========================= Find By Id ============================//
	
	@GetMapping ("/{id}")
	public ResponseEntity<Produto> GetById(@PathVariable long id) {
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp)) //ResponseEntity = resposta que ai returna
				.orElse(ResponseEntity.notFound().build());
	}
	
	//===================== Find By Nome ========================//
	
	@GetMapping ("/nome/{nome}")
	public ResponseEntity<List<Produto>> GetByNome(@PathVariable String nome) {
		return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	//======================= Post Produto ==========================//
	
	@PostMapping
	public ResponseEntity<Produto> post (@RequestBody Produto nome) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(nome));
	}
	
	//======================= Put Produto ==========================//
	
	@PutMapping
	public ResponseEntity<Produto> put (@RequestBody Produto nome) {
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(nome));
	}
	
	//===================== Delete Produto ========================//
	
	@DeleteMapping ("/{id}") //O que esta entre chaves é uma variavel
	public void delete(@PathVariable long id) { 
		repository.deleteById(id);
	}
}
