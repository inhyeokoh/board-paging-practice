package org.example.basicpj.domain;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Post {
    private Long id;
    private String title;
    private String content;
    private String writer;
    private LocalDateTime createdAt;
}
