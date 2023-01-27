package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
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
    @ManyToOne
    @JoinColumn(name = "apply_mentoring_id") // 외래키
    private ApplyMentoring applyMentoring;
}
