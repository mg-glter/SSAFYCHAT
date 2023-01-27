package com.ssafychat.domain.mentoring.model;

import com.ssafychat.domain.member.model.Member;
import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class ApplyMentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int applyMentoringId;

    @ManyToOne
    @JoinColumn(name = "mentee_id", nullable = false)// 외래키
    private Member menteeUid;

    @Column(columnDefinition = "VARCHAR(20)", nullable = false)
    private String job;

    @Column(columnDefinition = "VARCHAR(30)", nullable = false)
    private String company;

}
