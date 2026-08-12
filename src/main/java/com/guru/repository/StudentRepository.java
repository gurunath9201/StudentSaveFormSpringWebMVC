package com.guru.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.guru.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{

}
