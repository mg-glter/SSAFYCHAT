package com.ssafychat.domain.mentoring.dao;

import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


public interface ApplyMentoringRepository extends JpaRepository<ApplyMentoring, Long> {


}
