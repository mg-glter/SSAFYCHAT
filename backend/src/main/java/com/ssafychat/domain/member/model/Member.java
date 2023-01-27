package com.ssafychat.domain.member.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    private String job;
    private String belong;

    @Column(nullable = false)
    private String role;
    private int totalScore;
    private String email;
    private String password;
    private String social;

    @Column(nullable = false)
    private int studentNumber;
    private String refreshToken;

    @Column(nullable = false)
    private String name;

}
