package com.ssafychat.domain.mentoring.model;

import com.ssafychat.domain.member.model.Member;
import com.ssafychat.global.util.DateToStringConverter;
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
    private int mentoringId;

    @ManyToOne
    @JoinColumn(name = "mentee_uid", nullable = false) // 외래키
    private Member menteeUid;

    @ManyToOne
    @JoinColumn(name = "mentor_uid", nullable = false) // 외래키
    private Member mentorUid;

    @Convert(converter= DateToStringConverter.class)
    @Column(nullable = false)
    private String time; // 1. 형식

    @Column(nullable = false, columnDefinition = "VARCHAR(20)")
    private String job;

    @Column(nullable = false, columnDefinition = "VARCHAR(30)")
    private String company;
}
