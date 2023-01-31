package com.ssafychat.domain.mentoring.dao;

import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.model.Mentoring;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MentoringDao extends JpaRepository<Mentoring, Integer> {

    List<Mentoring> findAll(Sort sort);


}
