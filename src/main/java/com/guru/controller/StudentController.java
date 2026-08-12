package com.guru.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.guru.entity.Student;
import com.guru.repository.StudentRepository;

@Controller
public class StudentController {
	
	@Autowired
	StudentRepository repository;
	
	@GetMapping("/")
	public ModelAndView showForm()
	{
		ModelAndView mav=new ModelAndView();
		
		List<Student> students=repository.findAll();
		mav.addObject("students",students);
		mav.setViewName("student");
		return mav;
	}
	
	@PostMapping("/save")
	public ModelAndView saveStudent(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("gender") String gender,@RequestParam("course") String course,@RequestParam(value = "timings",required = false) String[] timings)
	{
		String timing="";
		if(timings!=null)
		{
			for(String t:timings)
			{
				timing=timing+t+" ";
			}
		}
		
		Student student=new Student();
		student.setName(name);
		student.setEmail(email);
		student.setGender(gender);
		student.setCourse(course);
		student.setTimings(timing);
		
		repository.save(student);
		
		ModelAndView mav=new ModelAndView();
		
		List<Student> students=repository.findAll();
		
		mav.addObject("students",students);
		mav.addObject("message","Student Saved Successfully");
		mav.setViewName("student");
		
		return mav;
	}
}
