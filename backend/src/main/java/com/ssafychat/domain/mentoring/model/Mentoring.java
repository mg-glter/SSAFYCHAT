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
    @ManyToOne
    @JoinColumn(name = "user_id")// 외래키
    private Member mentoringId;

    @Column(nullable = false)
    @ManyToOne
    @JoinColumn(name = "user_id")// 외래키// 외래키
    private Member menteeUid;

    @Column(nullable = false) // 외래키
    private int mentorUid;

    @Convert(converter= DateToStringConverter.class)
    @Column(nullable = false)
    private String time; // 1. 형식? 2. default가 null로 되어 있는데 맞나요?

    @Column(nullable = false, columnDefinition = "VARCHAR(20)")
    private String job;

    @Column(nullable = false, columnDefinition = "VARCHAR(30)")
    private String company;
}
