package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
@IdClass(MentoringDateInterface.class)
public class MentoringDate {

    @Id
    @Column
    private String time;


    @Id
    @Column(name = "apply_mentoring_id") // 외래키
    private int applyMentoringId;
}
