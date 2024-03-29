package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.member.dto.PossibleMentoringDto;
import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.mentoring.dto.*;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.CompleteMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;

import java.util.Date;
import java.util.List;

public interface MentoringService {

    List<Mentoring> findMentoring();

    List<PossibleMentoringDto> getPossibleMentoringList(String job, String company);

    List<ApplyMentoringForMentorDto> getApplyMentoringListForMentor(int userId);
    List<MatchMentoringForMentorDto> getMatchMentoringListForMentor(int userId);

    int deleteMentoringDate(int applyMentoringId);
    ApplyMentoring deleteApplyMentoring(int applyMentoringId);
    Mentoring insertMentoring(int userId, ApplyMentoring applyMentoring, Date time);

    Mentoring deleteMentoring(int mentoringId);
    void insertCancelMentoring(int canceler, String reason, Mentoring mentoring);

    RankerDto[] ranking();

    MainInfoDto mainInfo(CompleteMentoring completeMentoring);

    void insertApplyMentoringAndMentoringDate(Member mentee, ApplyMentoringDto applyMentoringDto);

    List<RollingPaperDto> getRollingPaper(Member mentor);
    void updateRollingPaper(RollingPaperDto rollingPaperDto);

    void addReviewAndScore(ReviewAndScoreDto reviewAndScoreDto);

    void reportBadUser(Member reporter, int completeMentoringId, String reason);

    List<ApplyMentoringViewDto> getApplyMentoringList(int userId);

    List<MentoringListForMenteeDto> getMatchedMentoringList(int userId);

    List<CanceledMentoringListDto> getCancledMentoringList(int userId);

    void insertCompleteMentoring(Mentoring mentoring);

//    List<Integer> rankerCompleteCountList();

}
