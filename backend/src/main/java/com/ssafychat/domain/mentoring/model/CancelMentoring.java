package com.ssafychat.domain.mentoring.model;

import com.ssafychat.domain.member.model.Member;
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
    private int cancelMentoringId;
    @ManyToOne
    @JoinColumn(name = "mentee_uid", nullable = false) // 외래키
    private Member mentee;
    @ManyToOne
    @JoinColumn(name = "mentor_uid", nullable = false) // 외래키
    private Member mentor;
    @Column(nullable = false)
    private String time; // 1. 형식?
    @Column(columnDefinition = "VARCHAR(20)", nullable = false)
    private String job;
    @Column(columnDefinition = "VARCHAR(30)", nullable = false)
    private String company;
    @Column(nullable = false)
    private int canceler;
    @Column(columnDefinition = "VARCHAR(100)", nullable = false)
    private String reason;
}
