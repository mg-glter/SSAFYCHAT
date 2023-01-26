package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class CancelMentoring {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cancel_mentoring_id")
    private int cancelMentoringId;
    @Column(name = "mentee_uid", nullable = false) // 외래키
    private int menteeUid;
    @Column(name = "mentor_uid", nullable = false) // 외래키
    private int mentorUid;
    @Column()
    private String time; // 1. 형식? 2. not null이어야 하지 않은지?
    @Column(length = 20, nullable = false)
    private String job;
    @Column(length = 30, nullable = false)
    private String company;
    @Column(nullable = false)
    private int canceler;
    @Column(length = 100, nullable = false)
    private String reason;

}
