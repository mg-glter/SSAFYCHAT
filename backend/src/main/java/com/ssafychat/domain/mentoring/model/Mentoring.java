package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Mentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mentoring_id")
    private int mentoringId;
    @Column(name = "mentee_uid", nullable = false) // 외래키
    private int menteeUid;
    @Column(name = "mentor_uid", nullable = false) // 외래키
    private int mentorUid;
    @Column
    private String time; // 1. 형식? 2. default가 null로 되어 있는데 맞나요?
    @Column(nullable = false)
    private String job;
    @Column(nullable = false)
    private String company;
}
