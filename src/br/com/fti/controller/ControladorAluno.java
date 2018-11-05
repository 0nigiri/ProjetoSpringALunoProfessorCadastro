package br.com.fti.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fti.dao.AlunoDAO;
import br.com.fti.model.Aluno;

@Controller
public class ControladorAluno {
	
	@RequestMapping("cadastroAluno")
	public String form() {
		return "aluno/cadastroAluno";
	}
	
	@RequestMapping("adicionarAluno")
	public String cadastrarAluno(Aluno aluno) {
		
		AlunoDAO alunoDAO = new AlunoDAO();
		alunoDAO.cadastrarAluno(aluno);
		return "aluno/listaAluno";
		
	}
	
	@RequestMapping("listaAluno")
	public String  consultarListaAluno(Model model){
		AlunoDAO alunoDAO = new AlunoDAO();
		List<Aluno> aluno = alunoDAO.consultarListaAluno();	
		model.addAttribute("aluno", aluno);
		
		return "aluno/listaAluno";
	}
	
	public Aluno  consultarUnicoAluno(int matricula){
		AlunoDAO alunoDAO = new AlunoDAO();
		return alunoDAO.consultarAluno(matricula);
		
	}
	
	@RequestMapping("deletarAluno")
	public String  deletarAluno(Aluno aluno){
		AlunoDAO alunoDAO = 	new AlunoDAO();
		 alunoDAO.deletarAluno(aluno.getMatricula());
		return "redirect:listaAluno";
		
	}
	
	@RequestMapping("editarAluno")
	public String editarAluno(int matricula ,Model model )  {
		AlunoDAO alunoDAO = new AlunoDAO();
		model.addAttribute("aluno", alunoDAO.consultarAluno(matricula));
		return "aluno/editarAluno";
	}
	
	@RequestMapping("finalizarEdicao")
	public String finalizarEditarAluno(Aluno aluno) {
		
		AlunoDAO alunoDAO = new AlunoDAO();
		alunoDAO.alterarAluno(aluno);
		
		return "redirect:listaAluno";
	}
	
	
	
	
}
