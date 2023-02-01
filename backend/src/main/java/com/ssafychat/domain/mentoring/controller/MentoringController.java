package com.ssafychat.domain.mentoring.controller;

import com.ssafychat.domain.member.dto.PossibleMentoringDto;
import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.dto.ApplyMentoringForMentorDto;
import com.ssafychat.domain.mentoring.dto.MatchMentoringForMentorDto;
import com.ssafychat.domain.mentoring.dto.MentoringListForMentorDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;
import com.ssafychat.domain.mentoring.service.MentoringServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/mentoring")
@CrossOrigin("*")
public class MentoringController {
    @Autowired
    private MentoringServiceImpl mentoringService;

    @GetMapping("/")
    public ResponseEntity<?> aliveCheck() {
        return new ResponseEntity<String>("Alive", HttpStatus.OK);
    }
    @GetMapping
    public List<Mentoring> findMentoring() {
        return mentoringService.findMentoring();
    }

    @GetMapping("/weekly-rankers")
    public ResponseEntity<?> weeklyRankers() {
        return new ResponseEntity<String>("weekly-rankers", HttpStatus.OK);
    }
    @GetMapping("/main-info")
    public ResponseEntity<?> mainInfo() {
        return new ResponseEntity<String>("main-info", HttpStatus.OK);
    }
    @GetMapping("/search")
    public ResponseEntity<?> SearchPossibleMentoring(@RequestParam(defaultValue = "") String job, @RequestParam(defaultValue = "") String belong) {
        List<PossibleMentoringDto> possibleMentorings = mentoringService.getPossibleMentoringList(job, belong);
        return new ResponseEntity<>(possibleMentorings, HttpStatus.OK);
    }
    @PostMapping("/apply")
    public ResponseEntity<String> applyMentoring(ApplyMentoringDto applyMentoringDto, HttpServletRequest request) {

        ApplyMentoring applyMentoring = mentoringService.toEntity(applyMentoringDto);

        //applyMentoringRepository
        mentoringService.applyMentoring(applyMentoring);
        return new ResponseEntity<String>("apply", HttpStatus.CREATED);

    }
    @GetMapping("/reservation")
    public ResponseEntity<?> reservationMentoring() {
        return new ResponseEntity<String>("reservation", HttpStatus.OK);
    }
    @DeleteMapping("/cancel/appointment")
    public ResponseEntity<?> appointmentCancel() {
        return new ResponseEntity<String>("cancel/appointment", HttpStatus.OK);
    }
    @DeleteMapping("/cancel/reservation")
    public ResponseEntity<?> reservationCancel() {
        return new ResponseEntity<String>("cancel/reservation", HttpStatus.OK);
    }
    @GetMapping("/appointment") // 멘토에게 들어온 멘토링 목록, 매칭된 멘토링 목록
    public ResponseEntity<?> appointmentSearch(@RequestHeader Map<String, String> data, HttpServletRequest request) {
        for (Map.Entry<String, String> entry : data.entrySet()) {
            System.out.println("key: " + entry.getKey() +
                    ", value: " + entry.getValue());
        }
        request.getHeader("Authorization");

        // 로그인 정보에서 식별자를 받아와서
        int userId = 1; // 임시

        // 예약 정보 받아오기
        List<ApplyMentoringForMentorDto> applyList = mentoringService.getApplyMentoringListForMentor(userId);
        System.out.println("applyList 조회");
        System.out.println(applyList);

        // 매칭 정보 받아오기
        List<MatchMentoringForMentorDto> matchList = mentoringService.getMatchMentoringListForMentor(userId);
        System.out.println("matchList 조회");
        System.out.println(matchList);

        // MentoringListForMentorDto에 두 List 담아서 반환
        MentoringListForMentorDto list = MentoringListForMentorDto.builder().applys(applyList).matches(matchList).build();
        return new ResponseEntity<>(list, HttpStatus.OK);
    }
    @PostMapping("/appointment")
    public ResponseEntity<?> appointmentAccept() {
        return new ResponseEntity<String>("appointment", HttpStatus.OK);
    }
    @GetMapping("/review")
    public ResponseEntity<?> reviewRollingPaper() {
        return new ResponseEntity<String>("review", HttpStatus.OK);
    }


}
