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

    @Column(columnDefinition = "VARCHAR(20)")
    private String job;

    @Column(columnDefinition = "VARCHAR(30)")
    private String belong;

    @Column(columnDefinition = "VARCHAR(15)", nullable = false)
    private String role;

    private int totalScore;

    @Column(columnDefinition = "VARCHAR(50)", nullable = false)
    private String email;

    @Column(columnDefinition = "VARCHAR(100)", nullable = false)
    private String password;

    @Column(columnDefinition = "VARCHAR(10)", nullable = false)
    private String social;

    @Column(columnDefinition = "VARCHAR(10)", nullable = false)
    private String studentNumber;

    @Column(columnDefinition = "VARCHAR(1000)")
    private String refreshToken;

    @Column(columnDefinition = "VARCHAR(10)", nullable = false)
    private String name;

}
