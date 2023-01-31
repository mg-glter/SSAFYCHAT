package com.ssafychat.domain.mentoring.controller;

import com.ssafychat.domain.mentoring.dao.ApplyMentoringRepository;
import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;
import com.ssafychat.domain.mentoring.service.MentoringService;
import com.ssafychat.domain.mentoring.service.MentoringServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    @GetMapping("/job/{job}")
    public ResponseEntity<?> jobSearch(@PathVariable("job") String job) {
        return new ResponseEntity<String>("job:"+job, HttpStatus.OK);
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
    @GetMapping("/appointment")
    public ResponseEntity<?> appointmentSearch() {
        return new ResponseEntity<String>("appointment", HttpStatus.OK);
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
