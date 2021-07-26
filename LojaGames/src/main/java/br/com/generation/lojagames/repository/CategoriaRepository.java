package br.com.generation.lojagames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.generation.lojagames.model.CategoriaModel;

@Repository
public interface CategoriaRepository extends JpaRepository <CategoriaModel, Long>{

	public List<CategoriaModel> findAllByDescricaoContainingIgnoreCase (String descricao);
	//Criar uma collection List que procura mais de um atributo 
}
