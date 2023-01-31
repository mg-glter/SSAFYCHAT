package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.member.dto.PossibleMentoringDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;

import java.util.List;

public interface MentoringService {

    List<Mentoring> findMentoring();

    void applyMentoring(ApplyMentoring applyMentoring);

    List<PossibleMentoringDto> getPossibleMentoringList(String job, String company);

}
