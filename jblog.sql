-- users 테이블 생성
CREATE TABLE users (
    userno    NUMBER,
    PRIMARY KEY ( userno ),
    id        VARCHAR2(50) NOT NULL UNIQUE,
    username  VARCHAR2(100) NOT NULL,
    password  VARCHAR2(50) NOT NULL,
    joindate  DATE NOT NULL
);

-- blog 테이블 생성
CREATE TABLE blog (
    id         VARCHAR2(50),
    blogtitle  VARCHAR2(200) NOT NULL,
    logofile   VARCHAR2(200),
    PRIMARY KEY ( id ),
    CONSTRAINT blog_fk FOREIGN KEY ( id )
        REFERENCES users ( id )
);

-- category 테이블 생성
CREATE TABLE category (
    cateno       NUMBER,
    PRIMARY KEY ( cateno ),
    id           VARCHAR2(50),
    catename     VARCHAR2(200) NOT NULL,
    description  VARCHAR2(500),
    regdate      DATE NOT NULL,
    CONSTRAINT category_fk FOREIGN KEY ( id )
        REFERENCES blog ( id )
);

-- post 테이블 생성
CREATE TABLE post (
    postno       NUMBER,
    PRIMARY KEY ( postno ),
    cateno       NUMBER,
    posttitle    VARCHAR2(300) NOT NULL,
    postcontent  VARCHAR2(4000),
    regdate      DATE NOT NULL,
    CONSTRAINT post_fk FOREIGN KEY ( cateno )
        REFERENCES category ( cateno )
);

-- comments 테이블 생성
CREATE TABLE comments (
    cmtno       NUMBER,
    PRIMARY KEY ( cmtno ),
    postno      NUMBER,
    userno      NUMBER,
    cmtcontent  VARCHAR2(1000) NOT NULL,
    regdate     DATE NOT NULL,
    CONSTRAINT comments_fk_1 FOREIGN KEY ( postno )
        REFERENCES post ( postno ),
    CONSTRAINT comments_fk_2 FOREIGN KEY ( userno )
        REFERENCES users ( userno )
);

-- 시퀀스 생성
CREATE SEQUENCE seq_users_no INCREMENT BY 1 START WITH 1 NOCACHE;

CREATE SEQUENCE seq_category_no INCREMENT BY 1 START WITH 1 NOCACHE;

CREATE SEQUENCE seq_post_no INCREMENT BY 1 START WITH 1 NOCACHE;

CREATE SEQUENCE seq_comments_no INCREMENT BY 1 START WITH 1 NOCACHE;