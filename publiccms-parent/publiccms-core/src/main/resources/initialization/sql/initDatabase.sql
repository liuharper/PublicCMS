--
-- Kingbase database dump
--

-- Dumped from database version V008R002C001B0432
-- Dumped by sys_dump version V008R003C001

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT sys_catalog.set_config('search_path', '"PUBLIC"', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: PUBLIC; Type: SCHEMA; Schema: -; Owner: SYSTEM
--

CREATE SCHEMA "PUBLIC";


ALTER SCHEMA "PUBLIC" OWNER TO "SYSTEM";

--
-- Name: SCHEMA "PUBLIC"; Type: COMMENT; Schema: -; Owner: SYSTEM
--

COMMENT ON SCHEMA "PUBLIC" IS 'standard public schema';


SET default_with_oids = false;

--
-- Name: cms_category; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_category" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "parent_id" INTEGER,
    "type_id" INTEGER,
    "child_ids" TEXT,
    "tag_type_ids" TEXT,
    "code" CHARACTER VARYING(50 char) NOT NULL,
    "template_path" CHARACTER VARYING(255 char),
    "path" CHARACTER VARYING(1000 char),
    "only_url" BOOLEAN NOT NULL,
    "has_static" BOOLEAN NOT NULL,
    "url" CHARACTER VARYING(1000 char),
    "content_path" CHARACTER VARYING(1000 char),
    "contain_child" BOOLEAN DEFAULT true NOT NULL,
    "page_size" INTEGER,
    "allow_contribute" BOOLEAN NOT NULL,
    "sort" INTEGER DEFAULT 0 NOT NULL,
    "hidden" BOOLEAN NOT NULL,
    "disabled" BOOLEAN NOT NULL,
    "extend_id" INTEGER
);


ALTER TABLE "PUBLIC"."cms_category" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_category"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_category" IS '分类';


--
-- Name: COLUMN "cms_category"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_category"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."name" IS '名称';


--
-- Name: COLUMN "cms_category"."parent_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."parent_id" IS '父分类ID';


--
-- Name: COLUMN "cms_category"."type_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."type_id" IS '分类类型';


--
-- Name: COLUMN "cms_category"."child_ids"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."child_ids" IS '所有子分类ID';


--
-- Name: COLUMN "cms_category"."tag_type_ids"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."tag_type_ids" IS '标签分类';


--
-- Name: COLUMN "cms_category"."code"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."code" IS '编码';


--
-- Name: COLUMN "cms_category"."template_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."template_path" IS '模板路径';


--
-- Name: COLUMN "cms_category"."path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."path" IS '首页路径';


--
-- Name: COLUMN "cms_category"."only_url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."only_url" IS '外链';


--
-- Name: COLUMN "cms_category"."has_static"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."has_static" IS '已经静态化';


--
-- Name: COLUMN "cms_category"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."url" IS '首页地址';


--
-- Name: COLUMN "cms_category"."content_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."content_path" IS '内容路径';


--
-- Name: COLUMN "cms_category"."contain_child"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."contain_child" IS '包含子分类内容';


--
-- Name: COLUMN "cms_category"."page_size"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."page_size" IS '每页数据条数';


--
-- Name: COLUMN "cms_category"."allow_contribute"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."allow_contribute" IS '允许投稿';


--
-- Name: COLUMN "cms_category"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."sort" IS '顺序';


--
-- Name: COLUMN "cms_category"."hidden"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."hidden" IS '隐藏';


--
-- Name: COLUMN "cms_category"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."disabled" IS '是否删除';


--
-- Name: COLUMN "cms_category"."extend_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category"."extend_id" IS '扩展ID';


--
-- Name: cms_category_attribute; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_category_attribute" (
    "category_id" INTEGER NOT NULL,
    "title" CHARACTER VARYING(80 char),
    "keywords" CHARACTER VARYING(100 char),
    "description" CHARACTER VARYING(300 char),
    "data" TEXT
);


ALTER TABLE "PUBLIC"."cms_category_attribute" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_category_attribute"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_category_attribute" IS '分类扩展';


--
-- Name: COLUMN "cms_category_attribute"."category_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_attribute"."category_id" IS '分类ID';


--
-- Name: COLUMN "cms_category_attribute"."title"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_attribute"."title" IS '标题';


--
-- Name: COLUMN "cms_category_attribute"."keywords"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_attribute"."keywords" IS '关键词';


--
-- Name: COLUMN "cms_category_attribute"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_attribute"."description" IS '描述';


--
-- Name: COLUMN "cms_category_attribute"."data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_attribute"."data" IS '数据JSON';


--
-- Name: cms_category_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_category_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_category_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_category_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_category_id_SEQ" OWNED BY "PUBLIC"."cms_category"."id";


--
-- Name: cms_category_model; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_category_model" (
    "category_id" INTEGER NOT NULL,
    "model_id" CHARACTER VARYING(20 char) NOT NULL,
    "template_path" CHARACTER VARYING(200 char)
);


ALTER TABLE "PUBLIC"."cms_category_model" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_category_model"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_category_model" IS '分类模型';


--
-- Name: COLUMN "cms_category_model"."category_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_model"."category_id" IS '分类ID';


--
-- Name: COLUMN "cms_category_model"."model_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_model"."model_id" IS '模型编码';


--
-- Name: COLUMN "cms_category_model"."template_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_model"."template_path" IS '内容模板路径';


--
-- Name: cms_category_type; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_category_type" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "sort" INTEGER NOT NULL,
    "extend_id" INTEGER
);


ALTER TABLE "PUBLIC"."cms_category_type" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_category_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_category_type" IS '分类类型';


--
-- Name: COLUMN "cms_category_type"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_type"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_category_type"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_type"."name" IS '名称';


--
-- Name: COLUMN "cms_category_type"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_type"."sort" IS '排序';


--
-- Name: COLUMN "cms_category_type"."extend_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_category_type"."extend_id" IS '扩展ID';


--
-- Name: cms_category_type_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_category_type_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_category_type_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_category_type_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_category_type_id_SEQ" OWNED BY "PUBLIC"."cms_category_type"."id";


--
-- Name: cms_comment; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_comment" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "reply_id" BIGINT,
    "reply_user_id" BIGINT,
    "content_id" BIGINT NOT NULL,
    "check_user_id" BIGINT,
    "check_date" TIMESTAMP WITHOUT TIME ZONE,
    "update_date" TIMESTAMP WITHOUT TIME ZONE,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "status" INTEGER NOT NULL,
    "disabled" BOOLEAN NOT NULL,
    "text" TEXT
);


ALTER TABLE "PUBLIC"."cms_comment" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_comment"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_comment" IS '评论';


--
-- Name: COLUMN "cms_comment"."id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."id" IS 'ID';


--
-- Name: COLUMN "cms_comment"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_comment"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."user_id" IS '用户ID';


--
-- Name: COLUMN "cms_comment"."reply_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."reply_id" IS '回复ID';


--
-- Name: COLUMN "cms_comment"."reply_user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."reply_user_id" IS '回复用户ID';


--
-- Name: COLUMN "cms_comment"."content_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."content_id" IS '文章内容';


--
-- Name: COLUMN "cms_comment"."check_user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."check_user_id" IS '审核用户';


--
-- Name: COLUMN "cms_comment"."check_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."check_date" IS '审核日期';


--
-- Name: COLUMN "cms_comment"."update_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."update_date" IS '更新日期';


--
-- Name: COLUMN "cms_comment"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."create_date" IS '创建日期';


--
-- Name: COLUMN "cms_comment"."status"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."status" IS '状态：1、已发布 2、待审核';


--
-- Name: COLUMN "cms_comment"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."disabled" IS '已禁用';


--
-- Name: COLUMN "cms_comment"."text"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_comment"."text" IS '内容';


--
-- Name: cms_comment_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_comment_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_comment_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_comment_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_comment_id_SEQ" OWNED BY "PUBLIC"."cms_comment"."id";


--
-- Name: cms_content; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_content" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "title" CHARACTER VARYING(255 char) NOT NULL,
    "user_id" BIGINT NOT NULL,
    "check_user_id" BIGINT,
    "category_id" INTEGER NOT NULL,
    "model_id" CHARACTER VARYING(20 char) NOT NULL,
    "parent_id" BIGINT,
    "quote_content_id" BIGINT,
    "copied" BOOLEAN NOT NULL,
    "author" CHARACTER VARYING(50 char),
    "editor" CHARACTER VARYING(50 char),
    "only_url" BOOLEAN NOT NULL,
    "has_images" BOOLEAN NOT NULL,
    "has_files" BOOLEAN NOT NULL,
    "has_static" BOOLEAN NOT NULL,
    "url" CHARACTER VARYING(1000 char),
    "description" CHARACTER VARYING(300 char),
    "tag_ids" TEXT,
    "dictionar_values" TEXT,
    "cover" CHARACTER VARYING(255 char),
    "childs" INTEGER NOT NULL,
    "scores" INTEGER NOT NULL,
    "comments" INTEGER NOT NULL,
    "clicks" INTEGER NOT NULL,
    "publish_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "expiry_date" TIMESTAMP WITHOUT TIME ZONE,
    "check_date" TIMESTAMP WITHOUT TIME ZONE,
    "update_date" TIMESTAMP WITHOUT TIME ZONE,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "sort" INTEGER DEFAULT 0 NOT NULL,
    "status" INTEGER NOT NULL,
    "disabled" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."cms_content" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_content"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_content" IS '内容';


--
-- Name: COLUMN "cms_content"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_content"."title"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."title" IS '标题';


--
-- Name: COLUMN "cms_content"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."user_id" IS '发表用户';


--
-- Name: COLUMN "cms_content"."check_user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."check_user_id" IS '审核用户';


--
-- Name: COLUMN "cms_content"."category_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."category_id" IS '分类';


--
-- Name: COLUMN "cms_content"."model_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."model_id" IS '模型';


--
-- Name: COLUMN "cms_content"."parent_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."parent_id" IS '父内容ID';


--
-- Name: COLUMN "cms_content"."quote_content_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."quote_content_id" IS '引用内容ID';


--
-- Name: COLUMN "cms_content"."copied"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."copied" IS '是否转载';


--
-- Name: COLUMN "cms_content"."author"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."author" IS '作者';


--
-- Name: COLUMN "cms_content"."editor"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."editor" IS '编辑';


--
-- Name: COLUMN "cms_content"."only_url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."only_url" IS '外链';


--
-- Name: COLUMN "cms_content"."has_images"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."has_images" IS '拥有图片列表';


--
-- Name: COLUMN "cms_content"."has_files"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."has_files" IS '拥有附件列表';


--
-- Name: COLUMN "cms_content"."has_static"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."has_static" IS '已经静态化';


--
-- Name: COLUMN "cms_content"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."url" IS '地址';


--
-- Name: COLUMN "cms_content"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."description" IS '简介';


--
-- Name: COLUMN "cms_content"."tag_ids"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."tag_ids" IS '标签';


--
-- Name: COLUMN "cms_content"."dictionar_values"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."dictionar_values" IS '数据字典值';


--
-- Name: COLUMN "cms_content"."cover"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."cover" IS '封面';


--
-- Name: COLUMN "cms_content"."childs"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."childs" IS '子内容数';


--
-- Name: COLUMN "cms_content"."scores"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."scores" IS '分数';


--
-- Name: COLUMN "cms_content"."comments"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."comments" IS '评论数';


--
-- Name: COLUMN "cms_content"."clicks"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."clicks" IS '点击数';


--
-- Name: COLUMN "cms_content"."publish_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."publish_date" IS '发布日期';


--
-- Name: COLUMN "cms_content"."expiry_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."expiry_date" IS '过期日期';


--
-- Name: COLUMN "cms_content"."check_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."check_date" IS '审核日期';


--
-- Name: COLUMN "cms_content"."update_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."update_date" IS '更新日期';


--
-- Name: COLUMN "cms_content"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."create_date" IS '创建日期';


--
-- Name: COLUMN "cms_content"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."sort" IS '顺序';


--
-- Name: COLUMN "cms_content"."status"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."status" IS '状态：0、草稿 1、已发布 2、待审核';


--
-- Name: COLUMN "cms_content"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content"."disabled" IS '是否删除';


--
-- Name: cms_content_attribute; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_content_attribute" (
    "content_id" BIGINT NOT NULL,
    "source" CHARACTER VARYING(50 char),
    "source_url" CHARACTER VARYING(1000 char),
    "data" TEXT,
    "search_text" TEXT,
    "text" TEXT,
    "word_count" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."cms_content_attribute" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_content_attribute"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_content_attribute" IS '内容扩展';


--
-- Name: COLUMN "cms_content_attribute"."source"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."source" IS '内容来源';


--
-- Name: COLUMN "cms_content_attribute"."source_url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."source_url" IS '来源地址';


--
-- Name: COLUMN "cms_content_attribute"."data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."data" IS '数据JSON';


--
-- Name: COLUMN "cms_content_attribute"."search_text"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."search_text" IS '全文索引文本';


--
-- Name: COLUMN "cms_content_attribute"."text"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."text" IS '内容';


--
-- Name: COLUMN "cms_content_attribute"."word_count"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_attribute"."word_count" IS '字数';


--
-- Name: cms_content_file; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_content_file" (
    "id" BIGINT NOT NULL,
    "content_id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "file_path" CHARACTER VARYING(255 char) NOT NULL,
    "file_type" CHARACTER VARYING(20 char) NOT NULL,
    "file_size" BIGINT NOT NULL,
    "clicks" INTEGER NOT NULL,
    "sort" INTEGER NOT NULL,
    "description" CHARACTER VARYING(300 char)
);


ALTER TABLE "PUBLIC"."cms_content_file" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_content_file"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_content_file" IS '内容附件';


--
-- Name: COLUMN "cms_content_file"."content_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."content_id" IS '内容';


--
-- Name: COLUMN "cms_content_file"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."user_id" IS '用户';


--
-- Name: COLUMN "cms_content_file"."file_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."file_path" IS '文件路径';


--
-- Name: COLUMN "cms_content_file"."file_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."file_type" IS '文件类型';


--
-- Name: COLUMN "cms_content_file"."file_size"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."file_size" IS '文件大小';


--
-- Name: COLUMN "cms_content_file"."clicks"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."clicks" IS '点击数';


--
-- Name: COLUMN "cms_content_file"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."sort" IS '排序';


--
-- Name: COLUMN "cms_content_file"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_file"."description" IS '描述';


--
-- Name: cms_content_file_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_content_file_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_content_file_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_content_file_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_content_file_id_SEQ" OWNED BY "PUBLIC"."cms_content_file"."id";


--
-- Name: cms_content_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_content_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_content_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_content_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_content_id_SEQ" OWNED BY "PUBLIC"."cms_content"."id";


--
-- Name: cms_content_related; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_content_related" (
    "id" BIGINT NOT NULL,
    "content_id" BIGINT NOT NULL,
    "related_content_id" BIGINT,
    "user_id" BIGINT NOT NULL,
    "url" CHARACTER VARYING(1000 char),
    "title" CHARACTER VARYING(255 char),
    "description" CHARACTER VARYING(300 char),
    "clicks" INTEGER NOT NULL,
    "sort" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."cms_content_related" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_content_related"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_content_related" IS '推荐推荐';


--
-- Name: COLUMN "cms_content_related"."content_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."content_id" IS '内容';


--
-- Name: COLUMN "cms_content_related"."related_content_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."related_content_id" IS '推荐内容';


--
-- Name: COLUMN "cms_content_related"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."user_id" IS '推荐用户';


--
-- Name: COLUMN "cms_content_related"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."url" IS '推荐链接地址';


--
-- Name: COLUMN "cms_content_related"."title"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."title" IS '推荐标题';


--
-- Name: COLUMN "cms_content_related"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."description" IS '推荐简介';


--
-- Name: COLUMN "cms_content_related"."clicks"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."clicks" IS '点击数';


--
-- Name: COLUMN "cms_content_related"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_content_related"."sort" IS '排序';


--
-- Name: cms_content_related_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_content_related_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_content_related_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_content_related_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_content_related_id_SEQ" OWNED BY "PUBLIC"."cms_content_related"."id";


--
-- Name: cms_dictionary; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_dictionary" (
    "id" CHARACTER VARYING(20 char) NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(100 char) NOT NULL,
    "multiple" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."cms_dictionary" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_dictionary"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_dictionary" IS '字典';


--
-- Name: COLUMN "cms_dictionary"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_dictionary"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary"."name" IS '名称';


--
-- Name: COLUMN "cms_dictionary"."multiple"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary"."multiple" IS '允许多选';


--
-- Name: cms_dictionary_data; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_dictionary_data" (
    "dictionary_id" CHARACTER VARYING(20 char) NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "value" CHARACTER VARYING(50 char) NOT NULL,
    "text" CHARACTER VARYING(100 char) NOT NULL
);


ALTER TABLE "PUBLIC"."cms_dictionary_data" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_dictionary_data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_dictionary_data" IS '字典数据';


--
-- Name: COLUMN "cms_dictionary_data"."dictionary_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary_data"."dictionary_id" IS '字典';


--
-- Name: COLUMN "cms_dictionary_data"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary_data"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_dictionary_data"."value"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary_data"."value" IS '值';


--
-- Name: COLUMN "cms_dictionary_data"."text"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_dictionary_data"."text" IS '文字';


--
-- Name: cms_place; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_place" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "path" CHARACTER VARYING(100 char) NOT NULL,
    "user_id" BIGINT,
    "check_user_id" BIGINT,
    "item_type" CHARACTER VARYING(50 char),
    "item_id" BIGINT,
    "title" CHARACTER VARYING(255 char) NOT NULL,
    "url" CHARACTER VARYING(1000 char),
    "cover" CHARACTER VARYING(255 char),
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "publish_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "expiry_date" TIMESTAMP WITHOUT TIME ZONE,
    "status" INTEGER NOT NULL,
    "clicks" INTEGER NOT NULL,
    "disabled" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."cms_place" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_place"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_place" IS '页面数据';


--
-- Name: COLUMN "cms_place"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_place"."path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."path" IS '模板路径';


--
-- Name: COLUMN "cms_place"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."user_id" IS '提交用户';


--
-- Name: COLUMN "cms_place"."check_user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."check_user_id" IS '审核用户';


--
-- Name: COLUMN "cms_place"."item_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."item_type" IS '推荐项目类型';


--
-- Name: COLUMN "cms_place"."item_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."item_id" IS '推荐项目ID';


--
-- Name: COLUMN "cms_place"."title"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."title" IS '标题';


--
-- Name: COLUMN "cms_place"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."url" IS '超链接';


--
-- Name: COLUMN "cms_place"."cover"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."cover" IS '封面图';


--
-- Name: COLUMN "cms_place"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."create_date" IS '创建日期';


--
-- Name: COLUMN "cms_place"."publish_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."publish_date" IS '发布日期';


--
-- Name: COLUMN "cms_place"."expiry_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."expiry_date" IS '过期日期';


--
-- Name: COLUMN "cms_place"."status"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."status" IS '状态：0、前台提交 1、已发布 ';


--
-- Name: COLUMN "cms_place"."clicks"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."clicks" IS '点击数';


--
-- Name: COLUMN "cms_place"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place"."disabled" IS '已禁用';


--
-- Name: cms_place_attribute; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_place_attribute" (
    "place_id" BIGINT NOT NULL,
    "data" TEXT
);


ALTER TABLE "PUBLIC"."cms_place_attribute" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_place_attribute"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_place_attribute" IS '推荐位数据扩展';


--
-- Name: COLUMN "cms_place_attribute"."place_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place_attribute"."place_id" IS '位置ID';


--
-- Name: COLUMN "cms_place_attribute"."data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_place_attribute"."data" IS '数据JSON';


--
-- Name: cms_place_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_place_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_place_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_place_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_place_id_SEQ" OWNED BY "PUBLIC"."cms_place"."id";


--
-- Name: cms_tag; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_tag" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "type_id" INTEGER,
    "search_count" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."cms_tag" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_tag"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_tag" IS '标签';


--
-- Name: COLUMN "cms_tag"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_tag"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag"."name" IS '名称';


--
-- Name: COLUMN "cms_tag"."type_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag"."type_id" IS '分类ID';


--
-- Name: COLUMN "cms_tag"."search_count"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag"."search_count" IS '搜索次数';


--
-- Name: cms_tag_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_tag_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_tag_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_tag_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_tag_id_SEQ" OWNED BY "PUBLIC"."cms_tag"."id";


--
-- Name: cms_tag_type; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_tag_type" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "count" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."cms_tag_type" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_tag_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_tag_type" IS '标签类型';


--
-- Name: COLUMN "cms_tag_type"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag_type"."site_id" IS '站点ID';


--
-- Name: COLUMN "cms_tag_type"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag_type"."name" IS '名称';


--
-- Name: COLUMN "cms_tag_type"."count"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_tag_type"."count" IS '标签数';


--
-- Name: cms_tag_type_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_tag_type_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_tag_type_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_tag_type_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_tag_type_id_SEQ" OWNED BY "PUBLIC"."cms_tag_type"."id";


--
-- Name: cms_word; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."cms_word" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(100 char) NOT NULL,
    "search_count" INTEGER NOT NULL,
    "hidden" BOOLEAN NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "PUBLIC"."cms_word" OWNER TO "SYSTEM";

--
-- Name: TABLE "cms_word"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."cms_word" IS '搜索词';


--
-- Name: COLUMN "cms_word"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_word"."site_id" IS '站点';


--
-- Name: COLUMN "cms_word"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_word"."name" IS '名称';


--
-- Name: COLUMN "cms_word"."search_count"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_word"."search_count" IS '搜索次数';


--
-- Name: COLUMN "cms_word"."hidden"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_word"."hidden" IS '隐藏';


--
-- Name: COLUMN "cms_word"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."cms_word"."create_date" IS '创建日期';


--
-- Name: cms_word_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."cms_word_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."cms_word_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: cms_word_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."cms_word_id_SEQ" OWNED BY "PUBLIC"."cms_word"."id";


--
-- Name: log_login; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."log_login" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "user_id" BIGINT,
    "ip" CHARACTER VARYING(64 char) NOT NULL,
    "channel" CHARACTER VARYING(50 char) NOT NULL,
    "result" BOOLEAN NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "error_password" CHARACTER VARYING(100 char)
);


ALTER TABLE "PUBLIC"."log_login" OWNER TO "SYSTEM";

--
-- Name: TABLE "log_login"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."log_login" IS '登录日志';


--
-- Name: COLUMN "log_login"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."site_id" IS '站点ID';


--
-- Name: COLUMN "log_login"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."name" IS '用户名';


--
-- Name: COLUMN "log_login"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."user_id" IS '用户ID';


--
-- Name: COLUMN "log_login"."ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."ip" IS 'IP';


--
-- Name: COLUMN "log_login"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."channel" IS '登录渠道';


--
-- Name: COLUMN "log_login"."result"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."result" IS '结果';


--
-- Name: COLUMN "log_login"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."create_date" IS '创建日期';


--
-- Name: COLUMN "log_login"."error_password"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_login"."error_password" IS '错误密码';


--
-- Name: log_login_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."log_login_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."log_login_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: log_login_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."log_login_id_SEQ" OWNED BY "PUBLIC"."log_login"."id";


--
-- Name: log_operate; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."log_operate" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "user_id" BIGINT,
    "channel" CHARACTER VARYING(50 char) NOT NULL,
    "operate" CHARACTER VARYING(40 char) NOT NULL,
    "ip" CHARACTER VARYING(64 char),
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "content" TEXT NOT NULL
);


ALTER TABLE "PUBLIC"."log_operate" OWNER TO "SYSTEM";

--
-- Name: TABLE "log_operate"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."log_operate" IS '操作日志';


--
-- Name: COLUMN "log_operate"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."site_id" IS '站点ID';


--
-- Name: COLUMN "log_operate"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."user_id" IS '用户ID';


--
-- Name: COLUMN "log_operate"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."channel" IS '操作渠道';


--
-- Name: COLUMN "log_operate"."operate"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."operate" IS '操作';


--
-- Name: COLUMN "log_operate"."ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."ip" IS 'IP';


--
-- Name: COLUMN "log_operate"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."create_date" IS '创建日期';


--
-- Name: COLUMN "log_operate"."content"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_operate"."content" IS '内容';


--
-- Name: log_operate_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."log_operate_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."log_operate_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: log_operate_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."log_operate_id_SEQ" OWNED BY "PUBLIC"."log_operate"."id";


--
-- Name: log_task; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."log_task" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "task_id" INTEGER NOT NULL,
    "begintime" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "endtime" TIMESTAMP WITHOUT TIME ZONE,
    "success" BOOLEAN NOT NULL,
    "result" TEXT
);


ALTER TABLE "PUBLIC"."log_task" OWNER TO "SYSTEM";

--
-- Name: TABLE "log_task"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."log_task" IS '任务计划日志';


--
-- Name: COLUMN "log_task"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."site_id" IS '站点ID';


--
-- Name: COLUMN "log_task"."task_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."task_id" IS '任务';


--
-- Name: COLUMN "log_task"."begintime"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."begintime" IS '开始时间';


--
-- Name: COLUMN "log_task"."endtime"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."endtime" IS '结束时间';


--
-- Name: COLUMN "log_task"."success"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."success" IS '执行成功';


--
-- Name: COLUMN "log_task"."result"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_task"."result" IS '执行结果';


--
-- Name: log_task_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."log_task_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."log_task_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: log_task_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."log_task_id_SEQ" OWNED BY "PUBLIC"."log_task"."id";


--
-- Name: log_upload; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."log_upload" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "channel" CHARACTER VARYING(50 char) NOT NULL,
    "original_name" CHARACTER VARYING(255 char),
    "file_type" CHARACTER VARYING(20 char) NOT NULL,
    "file_size" BIGINT NOT NULL,
    "ip" CHARACTER VARYING(64 char),
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "file_path" CHARACTER VARYING(500 char) NOT NULL
);


ALTER TABLE "PUBLIC"."log_upload" OWNER TO "SYSTEM";

--
-- Name: TABLE "log_upload"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."log_upload" IS '上传日志';


--
-- Name: COLUMN "log_upload"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."site_id" IS '站点ID';


--
-- Name: COLUMN "log_upload"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."user_id" IS '用户ID';


--
-- Name: COLUMN "log_upload"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."channel" IS '操作渠道';


--
-- Name: COLUMN "log_upload"."original_name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."original_name" IS '原文件名';


--
-- Name: COLUMN "log_upload"."file_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."file_type" IS '文件类型';


--
-- Name: COLUMN "log_upload"."file_size"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."file_size" IS '文件大小';


--
-- Name: COLUMN "log_upload"."ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."ip" IS 'IP';


--
-- Name: COLUMN "log_upload"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."create_date" IS '创建日期';


--
-- Name: COLUMN "log_upload"."file_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."log_upload"."file_path" IS '文件路径';


--
-- Name: log_upload_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."log_upload_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."log_upload_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: log_upload_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."log_upload_id_SEQ" OWNED BY "PUBLIC"."log_upload"."id";


--
-- Name: sys_app; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_app" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "channel" CHARACTER VARYING(50 char) NOT NULL,
    "app_key" CHARACTER VARYING(50 char) NOT NULL,
    "app_secret" CHARACTER VARYING(50 char) NOT NULL,
    "authorized_apis" TEXT,
    "expiry_minutes" INTEGER
);


ALTER TABLE "PUBLIC"."sys_app" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_app"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_app" IS '应用';


--
-- Name: COLUMN "sys_app"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_app"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."channel" IS '渠道';


--
-- Name: COLUMN "sys_app"."app_key"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."app_key" IS 'APP key';


--
-- Name: COLUMN "sys_app"."app_secret"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."app_secret" IS 'APP secret';


--
-- Name: COLUMN "sys_app"."authorized_apis"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."authorized_apis" IS '授权API';


--
-- Name: COLUMN "sys_app"."expiry_minutes"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app"."expiry_minutes" IS '过期时间';


--
-- Name: sys_app_client; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_app_client" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "channel" CHARACTER VARYING(20 char) NOT NULL,
    "uuid" CHARACTER VARYING(50 char) NOT NULL,
    "user_id" BIGINT,
    "client_version" CHARACTER VARYING(50 char),
    "last_login_date" TIMESTAMP WITHOUT TIME ZONE,
    "last_login_ip" CHARACTER VARYING(64 char),
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "disabled" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."sys_app_client" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_app_client"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_app_client" IS '应用客户端';


--
-- Name: COLUMN "sys_app_client"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_app_client"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."channel" IS '渠道';


--
-- Name: COLUMN "sys_app_client"."uuid"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."uuid" IS '唯一标识';


--
-- Name: COLUMN "sys_app_client"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."user_id" IS '绑定用户';


--
-- Name: COLUMN "sys_app_client"."client_version"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."client_version" IS '版本';


--
-- Name: COLUMN "sys_app_client"."last_login_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."last_login_date" IS '上次登录时间';


--
-- Name: COLUMN "sys_app_client"."last_login_ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."last_login_ip" IS '上次登录IP';


--
-- Name: COLUMN "sys_app_client"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."create_date" IS '创建日期';


--
-- Name: COLUMN "sys_app_client"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_client"."disabled" IS '是否禁用';


--
-- Name: sys_app_client_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_app_client_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_app_client_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_app_client_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_app_client_id_SEQ" OWNED BY "PUBLIC"."sys_app_client"."id";


--
-- Name: sys_app_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_app_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_app_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_app_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_app_id_SEQ" OWNED BY "PUBLIC"."sys_app"."id";


--
-- Name: sys_app_token; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_app_token" (
    "auth_token" CHARACTER VARYING(40 char) NOT NULL,
    "app_id" INTEGER NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "expiry_date" TIMESTAMP WITHOUT TIME ZONE
);


ALTER TABLE "PUBLIC"."sys_app_token" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_app_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_app_token" IS '应用授权';


--
-- Name: COLUMN "sys_app_token"."auth_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_token"."auth_token" IS '授权验证';


--
-- Name: COLUMN "sys_app_token"."app_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_token"."app_id" IS '应用ID';


--
-- Name: COLUMN "sys_app_token"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_token"."create_date" IS '创建日期';


--
-- Name: COLUMN "sys_app_token"."expiry_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_app_token"."expiry_date" IS '过期日期';


--
-- Name: sys_cluster; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_cluster" (
    "uuid" CHARACTER VARYING(40 char) NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "heartbeat_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "master" BOOLEAN NOT NULL,
    "cms_version" CHARACTER VARYING(20 char)
);


ALTER TABLE "PUBLIC"."sys_cluster" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_cluster"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_cluster" IS '服务器集群';


--
-- Name: COLUMN "sys_cluster"."uuid"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_cluster"."uuid" IS 'uuid';


--
-- Name: COLUMN "sys_cluster"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_cluster"."create_date" IS '创建时间';


--
-- Name: COLUMN "sys_cluster"."heartbeat_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_cluster"."heartbeat_date" IS '心跳时间';


--
-- Name: COLUMN "sys_cluster"."master"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_cluster"."master" IS '是否管理';


--
-- Name: sys_config_data; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_config_data" (
    "site_id" SMALLINT NOT NULL,
    "code" CHARACTER VARYING(50 char) NOT NULL,
    "data" TEXT NOT NULL
);


ALTER TABLE "PUBLIC"."sys_config_data" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_config_data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_config_data" IS '站点配置';


--
-- Name: COLUMN "sys_config_data"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_config_data"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_config_data"."code"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_config_data"."code" IS '配置项编码';


--
-- Name: COLUMN "sys_config_data"."data"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_config_data"."data" IS '值';


--
-- Name: sys_dept; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_dept" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "parent_id" INTEGER,
    "description" CHARACTER VARYING(300 char),
    "user_id" BIGINT,
    "max_sort" INTEGER DEFAULT 1000 NOT NULL,
    "owns_all_category" BOOLEAN NOT NULL,
    "owns_all_page" BOOLEAN NOT NULL,
    "owns_all_config" BOOLEAN DEFAULT true NOT NULL
);


ALTER TABLE "PUBLIC"."sys_dept" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_dept"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_dept" IS '部门';


--
-- Name: COLUMN "sys_dept"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_dept"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."name" IS '名称';


--
-- Name: COLUMN "sys_dept"."parent_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."parent_id" IS '父部门ID';


--
-- Name: COLUMN "sys_dept"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."description" IS '描述';


--
-- Name: COLUMN "sys_dept"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."user_id" IS '负责人';


--
-- Name: COLUMN "sys_dept"."max_sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."max_sort" IS '最大内容置顶级别';


--
-- Name: COLUMN "sys_dept"."owns_all_category"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."owns_all_category" IS '拥有全部分类权限';


--
-- Name: COLUMN "sys_dept"."owns_all_page"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."owns_all_page" IS '拥有全部页面权限';


--
-- Name: COLUMN "sys_dept"."owns_all_config"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept"."owns_all_config" IS '拥有全部配置权限';


--
-- Name: sys_dept_category; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_dept_category" (
    "dept_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."sys_dept_category" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_dept_category"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_dept_category" IS '部门分类';


--
-- Name: COLUMN "sys_dept_category"."dept_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_category"."dept_id" IS '部门ID';


--
-- Name: COLUMN "sys_dept_category"."category_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_category"."category_id" IS '分类ID';


--
-- Name: sys_dept_config; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_dept_config" (
    "dept_id" INTEGER NOT NULL,
    "config" CHARACTER VARYING(100 char) NOT NULL
);


ALTER TABLE "PUBLIC"."sys_dept_config" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_dept_config"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_dept_config" IS '部门配置';


--
-- Name: COLUMN "sys_dept_config"."dept_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_config"."dept_id" IS '部门ID';


--
-- Name: COLUMN "sys_dept_config"."config"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_config"."config" IS '配置';


--
-- Name: sys_dept_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_dept_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_dept_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_dept_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_dept_id_SEQ" OWNED BY "PUBLIC"."sys_dept"."id";


--
-- Name: sys_dept_page; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_dept_page" (
    "dept_id" INTEGER NOT NULL,
    "page" CHARACTER VARYING(100 char) NOT NULL
);


ALTER TABLE "PUBLIC"."sys_dept_page" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_dept_page"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_dept_page" IS '部门页面';


--
-- Name: COLUMN "sys_dept_page"."dept_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_page"."dept_id" IS '部门ID';


--
-- Name: COLUMN "sys_dept_page"."page"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_dept_page"."page" IS '页面';


--
-- Name: sys_domain; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_domain" (
    "name" CHARACTER VARYING(100 char) NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "wild" BOOLEAN NOT NULL,
    "path" CHARACTER VARYING(100 char)
);


ALTER TABLE "PUBLIC"."sys_domain" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_domain"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_domain" IS '域名';


--
-- Name: COLUMN "sys_domain"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_domain"."name" IS '域名';


--
-- Name: COLUMN "sys_domain"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_domain"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_domain"."wild"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_domain"."wild" IS '通配域名';


--
-- Name: COLUMN "sys_domain"."path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_domain"."path" IS '路径';


--
-- Name: sys_email_token; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_email_token" (
    "auth_token" CHARACTER VARYING(40 char) NOT NULL,
    "user_id" BIGINT NOT NULL,
    "email" CHARACTER VARYING(100 char) NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "expiry_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "PUBLIC"."sys_email_token" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_email_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_email_token" IS '邮件地址验证日志';


--
-- Name: COLUMN "sys_email_token"."auth_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_email_token"."auth_token" IS '验证码';


--
-- Name: COLUMN "sys_email_token"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_email_token"."user_id" IS '用户ID';


--
-- Name: COLUMN "sys_email_token"."email"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_email_token"."email" IS '邮件地址';


--
-- Name: COLUMN "sys_email_token"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_email_token"."create_date" IS '创建日期';


--
-- Name: COLUMN "sys_email_token"."expiry_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_email_token"."expiry_date" IS '过期日期';


--
-- Name: sys_extend; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_extend" (
    "id" INTEGER NOT NULL,
    "item_type" CHARACTER VARYING(20 char) NOT NULL,
    "item_id" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."sys_extend" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_extend"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_extend" IS '扩展';


--
-- Name: COLUMN "sys_extend"."item_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend"."item_type" IS '扩展类型';


--
-- Name: COLUMN "sys_extend"."item_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend"."item_id" IS '扩展项目ID';


--
-- Name: sys_extend_field; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_extend_field" (
    "extend_id" INTEGER NOT NULL,
    "code" CHARACTER VARYING(20 char) NOT NULL,
    "required" BOOLEAN NOT NULL,
    "searchable" BOOLEAN NOT NULL,
    "maxlength" INTEGER,
    "name" CHARACTER VARYING(20 char) NOT NULL,
    "description" CHARACTER VARYING(100 char),
    "input_type" CHARACTER VARYING(20 char) NOT NULL,
    "default_value" CHARACTER VARYING(50 char),
    "dictionary_id" CHARACTER VARYING(20 char),
    "sort" INTEGER DEFAULT 0 NOT NULL
);


ALTER TABLE "PUBLIC"."sys_extend_field" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_extend_field"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_extend_field" IS '扩展字段';


--
-- Name: COLUMN "sys_extend_field"."extend_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."extend_id" IS '扩展ID';


--
-- Name: COLUMN "sys_extend_field"."code"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."code" IS '编码';


--
-- Name: COLUMN "sys_extend_field"."required"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."required" IS '是否必填';


--
-- Name: COLUMN "sys_extend_field"."searchable"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."searchable" IS '是否可搜索';


--
-- Name: COLUMN "sys_extend_field"."maxlength"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."maxlength" IS '最大长度';


--
-- Name: COLUMN "sys_extend_field"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."name" IS '名称';


--
-- Name: COLUMN "sys_extend_field"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."description" IS '解释';


--
-- Name: COLUMN "sys_extend_field"."input_type"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."input_type" IS '表单类型';


--
-- Name: COLUMN "sys_extend_field"."default_value"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."default_value" IS '默认值';


--
-- Name: COLUMN "sys_extend_field"."dictionary_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."dictionary_id" IS '数据字典ID';


--
-- Name: COLUMN "sys_extend_field"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_extend_field"."sort" IS '顺序';


--
-- Name: sys_extend_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_extend_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_extend_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_extend_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_extend_id_SEQ" OWNED BY "PUBLIC"."sys_extend"."id";


--
-- Name: sys_module; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_module" (
    "id" CHARACTER VARYING(30 char) NOT NULL,
    "url" CHARACTER VARYING(255 char),
    "authorized_url" TEXT,
    "attached" CHARACTER VARYING(50 char),
    "parent_id" CHARACTER VARYING(30 char),
    "menu" BOOLEAN DEFAULT true NOT NULL,
    "sort" INTEGER NOT NULL
);


ALTER TABLE "PUBLIC"."sys_module" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_module"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_module" IS '模块';


--
-- Name: COLUMN "sys_module"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."url" IS '链接地址';


--
-- Name: COLUMN "sys_module"."authorized_url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."authorized_url" IS '授权地址';


--
-- Name: COLUMN "sys_module"."attached"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."attached" IS '标题附加';


--
-- Name: COLUMN "sys_module"."parent_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."parent_id" IS '父模块';


--
-- Name: COLUMN "sys_module"."menu"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."menu" IS '是否菜单';


--
-- Name: COLUMN "sys_module"."sort"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module"."sort" IS '排序';


--
-- Name: sys_module_lang; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_module_lang" (
    "module_id" CHARACTER VARYING(30 char) NOT NULL,
    "lang" CHARACTER VARYING(20 char) NOT NULL,
    "value" CHARACTER VARYING(100 char)
);


ALTER TABLE "PUBLIC"."sys_module_lang" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_module_lang"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_module_lang" IS '模块语言';


--
-- Name: COLUMN "sys_module_lang"."module_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module_lang"."module_id" IS '模块ID';


--
-- Name: COLUMN "sys_module_lang"."lang"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module_lang"."lang" IS '语言';


--
-- Name: COLUMN "sys_module_lang"."value"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_module_lang"."value" IS '值';


--
-- Name: sys_role; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_role" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "owns_all_right" BOOLEAN NOT NULL,
    "show_all_module" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."sys_role" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_role"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_role" IS '角色';


--
-- Name: COLUMN "sys_role"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_role"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role"."name" IS '名称';


--
-- Name: COLUMN "sys_role"."owns_all_right"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role"."owns_all_right" IS '拥有全部权限';


--
-- Name: COLUMN "sys_role"."show_all_module"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role"."show_all_module" IS '显示全部模块';


--
-- Name: sys_role_authorized; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_role_authorized" (
    "role_id" INTEGER NOT NULL,
    "url" CHARACTER VARYING(100 char) NOT NULL
);


ALTER TABLE "PUBLIC"."sys_role_authorized" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_role_authorized"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_role_authorized" IS '角色授权地址';


--
-- Name: COLUMN "sys_role_authorized"."role_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_authorized"."role_id" IS '角色ID';


--
-- Name: COLUMN "sys_role_authorized"."url"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_authorized"."url" IS '授权地址';


--
-- Name: sys_role_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_role_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_role_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_role_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_role_id_SEQ" OWNED BY "PUBLIC"."sys_role"."id";


--
-- Name: sys_role_module; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_role_module" (
    "role_id" INTEGER NOT NULL,
    "module_id" CHARACTER VARYING(30 char) NOT NULL
);


ALTER TABLE "PUBLIC"."sys_role_module" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_role_module"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_role_module" IS '角色授权模块';


--
-- Name: COLUMN "sys_role_module"."role_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_module"."role_id" IS '角色ID';


--
-- Name: COLUMN "sys_role_module"."module_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_module"."module_id" IS '模块ID';


--
-- Name: sys_role_user; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_role_user" (
    "role_id" INTEGER NOT NULL,
    "user_id" BIGINT NOT NULL
);


ALTER TABLE "PUBLIC"."sys_role_user" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_role_user"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_role_user" IS '用户角色';


--
-- Name: COLUMN "sys_role_user"."role_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_user"."role_id" IS '角色ID';


--
-- Name: COLUMN "sys_role_user"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_role_user"."user_id" IS '用户ID';


--
-- Name: sys_site; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_site" (
    "id" SMALLINT NOT NULL,
    "parent_id" SMALLINT,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "use_static" BOOLEAN NOT NULL,
    "site_path" CHARACTER VARYING(255 char) NOT NULL,
    "use_ssi" BOOLEAN NOT NULL,
    "dynamic_path" CHARACTER VARYING(255 char) NOT NULL,
    "disabled" BOOLEAN NOT NULL
);


ALTER TABLE "PUBLIC"."sys_site" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_site"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_site" IS '站点';


--
-- Name: COLUMN "sys_site"."parent_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."parent_id" IS '父站点ID';


--
-- Name: COLUMN "sys_site"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."name" IS '站点名';


--
-- Name: COLUMN "sys_site"."use_static"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."use_static" IS '启用静态化';


--
-- Name: COLUMN "sys_site"."site_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."site_path" IS '站点地址';


--
-- Name: COLUMN "sys_site"."use_ssi"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."use_ssi" IS '启用服务器端包含';


--
-- Name: COLUMN "sys_site"."dynamic_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."dynamic_path" IS '动态站点地址';


--
-- Name: COLUMN "sys_site"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_site"."disabled" IS '禁用';


--
-- Name: sys_site_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_site_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_site_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_site_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_site_id_SEQ" OWNED BY "PUBLIC"."sys_site"."id";


--
-- Name: sys_task; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_task" (
    "id" INTEGER NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "status" INTEGER NOT NULL,
    "cron_expression" CHARACTER VARYING(50 char) NOT NULL,
    "description" CHARACTER VARYING(300 char),
    "file_path" CHARACTER VARYING(255 char),
    "update_date" TIMESTAMP WITHOUT TIME ZONE
);


ALTER TABLE "PUBLIC"."sys_task" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_task"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_task" IS '任务计划';


--
-- Name: COLUMN "sys_task"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_task"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."name" IS '名称';


--
-- Name: COLUMN "sys_task"."status"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."status" IS '状态';


--
-- Name: COLUMN "sys_task"."cron_expression"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."cron_expression" IS '表达式';


--
-- Name: COLUMN "sys_task"."description"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."description" IS '描述';


--
-- Name: COLUMN "sys_task"."file_path"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."file_path" IS '文件路径';


--
-- Name: COLUMN "sys_task"."update_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_task"."update_date" IS '更新时间';


--
-- Name: sys_task_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_task_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_task_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_task_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_task_id_SEQ" OWNED BY "PUBLIC"."sys_task"."id";


--
-- Name: sys_user; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_user" (
    "id" BIGINT NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "name" CHARACTER VARYING(50 char) NOT NULL,
    "password" CHARACTER VARYING(128 char) NOT NULL,
    "salt" CHARACTER VARYING(20 char),
    "weak_password" BOOLEAN DEFAULT false NOT NULL,
    "nick_name" CHARACTER VARYING(45 char) NOT NULL,
    "dept_id" INTEGER,
    "owns_all_content" BOOLEAN DEFAULT true NOT NULL,
    "roles" TEXT,
    "email" CHARACTER VARYING(100 char),
    "email_checked" BOOLEAN NOT NULL,
    "superuser_access" BOOLEAN NOT NULL,
    "disabled" BOOLEAN NOT NULL,
    "last_login_date" TIMESTAMP WITHOUT TIME ZONE,
    "last_login_ip" CHARACTER VARYING(64 char),
    "login_count" INTEGER NOT NULL,
    "registered_date" TIMESTAMP WITHOUT TIME ZONE
);


ALTER TABLE "PUBLIC"."sys_user" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_user"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_user" IS '用户';


--
-- Name: COLUMN "sys_user"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_user"."name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."name" IS '用户名';


--
-- Name: COLUMN "sys_user"."password"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."password" IS '密码';


--
-- Name: COLUMN "sys_user"."salt"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."salt" IS '混淆码,为空时则密码为md5,为10位时sha512(sha512(password)+salt)';


--
-- Name: COLUMN "sys_user"."weak_password"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."weak_password" IS '弱密码';


--
-- Name: COLUMN "sys_user"."nick_name"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."nick_name" IS '昵称';


--
-- Name: COLUMN "sys_user"."dept_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."dept_id" IS '部门';


--
-- Name: COLUMN "sys_user"."owns_all_content"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."owns_all_content" IS '拥有所有内容权限';


--
-- Name: COLUMN "sys_user"."roles"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."roles" IS '角色';


--
-- Name: COLUMN "sys_user"."email"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."email" IS '邮箱地址';


--
-- Name: COLUMN "sys_user"."email_checked"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."email_checked" IS '已验证邮箱';


--
-- Name: COLUMN "sys_user"."superuser_access"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."superuser_access" IS '是否管理员';


--
-- Name: COLUMN "sys_user"."disabled"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."disabled" IS '是否禁用';


--
-- Name: COLUMN "sys_user"."last_login_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."last_login_date" IS '最后登录日期';


--
-- Name: COLUMN "sys_user"."last_login_ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."last_login_ip" IS '最后登录ip';


--
-- Name: COLUMN "sys_user"."login_count"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."login_count" IS '登录次数';


--
-- Name: COLUMN "sys_user"."registered_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user"."registered_date" IS '注册日期';


--
-- Name: sys_user_id_SEQ; Type: SEQUENCE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE SEQUENCE "PUBLIC"."sys_user_id_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PUBLIC"."sys_user_id_SEQ" OWNER TO "SYSTEM";

--
-- Name: sys_user_id_SEQ; Type: SEQUENCE OWNED BY; Schema: PUBLIC; Owner: SYSTEM
--

ALTER SEQUENCE "PUBLIC"."sys_user_id_SEQ" OWNED BY "PUBLIC"."sys_user"."id";


--
-- Name: sys_user_token; Type: TABLE; Schema: PUBLIC; Owner: SYSTEM
--

CREATE TABLE "PUBLIC"."sys_user_token" (
    "auth_token" CHARACTER VARYING(40 char) NOT NULL,
    "site_id" SMALLINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "channel" CHARACTER VARYING(50 char) NOT NULL,
    "create_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "expiry_date" TIMESTAMP WITHOUT TIME ZONE,
    "login_ip" CHARACTER VARYING(64 char) NOT NULL
);


ALTER TABLE "PUBLIC"."sys_user_token" OWNER TO "SYSTEM";

--
-- Name: TABLE "sys_user_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON TABLE "PUBLIC"."sys_user_token" IS '用户令牌';


--
-- Name: COLUMN "sys_user_token"."auth_token"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."auth_token" IS '登录授权';


--
-- Name: COLUMN "sys_user_token"."site_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."site_id" IS '站点ID';


--
-- Name: COLUMN "sys_user_token"."user_id"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."user_id" IS '用户ID';


--
-- Name: COLUMN "sys_user_token"."channel"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."channel" IS '渠道';


--
-- Name: COLUMN "sys_user_token"."create_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."create_date" IS '创建日期';


--
-- Name: COLUMN "sys_user_token"."expiry_date"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."expiry_date" IS '过期日期';


--
-- Name: COLUMN "sys_user_token"."login_ip"; Type: COMMENT; Schema: PUBLIC; Owner: SYSTEM
--

COMMENT ON COLUMN "PUBLIC"."sys_user_token"."login_ip" IS '登录IP';


--
-- Name: cms_category id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_category_id_SEQ'::REGCLASS);


--
-- Name: cms_category_type id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category_type" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_category_type_id_SEQ'::REGCLASS);


--
-- Name: cms_comment id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_comment" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_comment_id_SEQ'::REGCLASS);


--
-- Name: cms_content id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_content_id_SEQ'::REGCLASS);


--
-- Name: cms_content_file id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content_file" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_content_file_id_SEQ'::REGCLASS);


--
-- Name: cms_content_related id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content_related" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_content_related_id_SEQ'::REGCLASS);


--
-- Name: cms_place id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_place" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_place_id_SEQ'::REGCLASS);


--
-- Name: cms_tag id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_tag" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_tag_id_SEQ'::REGCLASS);


--
-- Name: cms_tag_type id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_tag_type" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_tag_type_id_SEQ'::REGCLASS);


--
-- Name: cms_word id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_word" ALTER COLUMN "id" SET DEFAULT NEXTVAL('cms_word_id_SEQ'::REGCLASS);


--
-- Name: log_login id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_login" ALTER COLUMN "id" SET DEFAULT NEXTVAL('log_login_id_SEQ'::REGCLASS);


--
-- Name: log_operate id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_operate" ALTER COLUMN "id" SET DEFAULT NEXTVAL('log_operate_id_SEQ'::REGCLASS);


--
-- Name: log_task id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_task" ALTER COLUMN "id" SET DEFAULT NEXTVAL('log_task_id_SEQ'::REGCLASS);


--
-- Name: log_upload id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_upload" ALTER COLUMN "id" SET DEFAULT NEXTVAL('log_upload_id_SEQ'::REGCLASS);


--
-- Name: sys_app id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_app_id_SEQ'::REGCLASS);


--
-- Name: sys_app_client id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app_client" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_app_client_id_SEQ'::REGCLASS);


--
-- Name: sys_dept id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_dept" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_dept_id_SEQ'::REGCLASS);


--
-- Name: sys_extend id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_extend" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_extend_id_SEQ'::REGCLASS);


--
-- Name: sys_role id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_role" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_role_id_SEQ'::REGCLASS);


--
-- Name: sys_site id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_site" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_site_id_SEQ'::REGCLASS);


--
-- Name: sys_task id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_task" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_task_id_SEQ'::REGCLASS);


--
-- Name: sys_user id; Type: DEFAULT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_user" ALTER COLUMN "id" SET DEFAULT NEXTVAL('sys_user_id_SEQ'::REGCLASS);


--
-- Data for Name: cms_category; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."cms_category" VALUES (1, 1, '测试', NULL, NULL, NULL, NULL, 'test', NULL, 'category/${category.id}', false, false, '//112.126.103.219:6888/jcycms/category/1', 'content/${content.id}', false, 20, false, 0, false, false, NULL);


--
-- Data for Name: cms_category_attribute; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."cms_category_attribute" VALUES (1, NULL, NULL, NULL, NULL);


--
-- Name: cms_category_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_category_id_SEQ"', 1, true);


--
-- Data for Name: cms_category_model; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."cms_category_model" VALUES (1, 'article', NULL);


--
-- Data for Name: cms_category_type; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_category_type_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_category_type_id_SEQ"', 1, false);


--
-- Data for Name: cms_comment; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_comment_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_comment_id_SEQ"', 1, false);


--
-- Data for Name: cms_content; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."cms_content" VALUES (1, 1, 'test', 2, 2, 1, 'article', NULL, NULL, false, NULL, NULL, false, false, false, false, '//112.126.103.219:6888/jcycms/content/1', 'test', NULL, NULL, NULL, 0, 0, 0, 1, '2019-10-22 18:48:41.873000', NULL, '2019-10-22 18:48:42.022000', NULL, '2019-10-22 18:48:41.873000', 0, 1, false);


--
-- Data for Name: cms_content_attribute; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."cms_content_attribute" VALUES (1, NULL, NULL, NULL, 'test', '<p>test</p>', 4);


--
-- Data for Name: cms_content_file; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_content_file_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_content_file_id_SEQ"', 1, false);


--
-- Name: cms_content_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_content_id_SEQ"', 1, true);


--
-- Data for Name: cms_content_related; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_content_related_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_content_related_id_SEQ"', 1, false);


--
-- Data for Name: cms_dictionary; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: cms_dictionary_data; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: cms_place; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: cms_place_attribute; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_place_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_place_id_SEQ"', 1, false);


--
-- Data for Name: cms_tag; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_tag_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_tag_id_SEQ"', 1, false);


--
-- Data for Name: cms_tag_type; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_tag_type_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_tag_type_id_SEQ"', 1, false);


--
-- Data for Name: cms_word; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: cms_word_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."cms_word_id_SEQ"', 1, false);


--
-- Data for Name: log_login; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."log_login" VALUES (1, 1, 'admin', 2, '127.0.0.1', 'web_manager', true, '2019-10-22 18:29:47.976000', NULL);
INSERT INTO "PUBLIC"."log_login" VALUES (2, 1, 'admin', 2, '117.157.107.18', 'web_manager', false, '2019-10-22 18:44:14.765000', 'Admin1234');
INSERT INTO "PUBLIC"."log_login" VALUES (3, 1, 'admin', 2, '117.157.107.18', 'web_manager', true, '2019-10-22 18:44:21.024000', NULL);


--
-- Name: log_login_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."log_login_id_SEQ"', 3, true);


--
-- Data for Name: log_operate; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."log_operate" VALUES (1, 1, 2, 'web_manager', 'update.site', '127.0.0.1', '2019-10-22 18:29:57.507000', '{"id":1,"parentId":null,"name":"CMS","useStatic":true,"sitePath":"//dev.publiccms.com:8080/publiccms/webfile/","useSsi":false,"dynamicPath":"//dev.publiccms.com:8080/publiccms/"}');
INSERT INTO "PUBLIC"."log_operate" VALUES (2, 1, 2, 'web_manager', 'save.category', '127.0.0.1', '2019-10-22 18:30:30.041000', '{"id":1,"name":"aa","parentId":null,"typeId":null,"childIds":null,"tagTypeIds":null,"code":"aa","onlyUrl":false,"hasStatic":false,"url":null,"containChild":false,"pageSize":20,"allowContribute":false,"sort":0,"hidden":false,"extendId":null}');
INSERT INTO "PUBLIC"."log_operate" VALUES (3, 1, 2, 'web_manager', 'update.site', '117.157.107.18', '2019-10-22 18:45:16.387000', '{"id":1,"parentId":null,"name":"CMS","useStatic":true,"sitePath":"//112.126.103.219:6888/jcycms/webfile/","useSsi":false,"dynamicPath":"//112.126.103.219:6888/jcycms/"}');
INSERT INTO "PUBLIC"."log_operate" VALUES (4, 1, 2, 'web_manager', 'update.template.meta', '117.157.107.18', '2019-10-22 18:46:13.581000', '/content.html');
INSERT INTO "PUBLIC"."log_operate" VALUES (5, 1, 2, 'web_manager', 'update.template.meta', '117.157.107.18', '2019-10-22 18:46:23.399000', '/demo/category.html');
INSERT INTO "PUBLIC"."log_operate" VALUES (6, 1, 2, 'web_manager', 'delete.web.template', '117.157.107.18', '2019-10-22 18:46:30.918000', '/demo');
INSERT INTO "PUBLIC"."log_operate" VALUES (7, 1, 2, 'web_manager', 'update.template.meta', '117.157.107.18', '2019-10-22 18:46:41.031000', '/category.html');
INSERT INTO "PUBLIC"."log_operate" VALUES (8, 1, 2, 'web_manager', 'update.template.meta', '117.157.107.18', '2019-10-22 18:46:55.295000', '/search.html');
INSERT INTO "PUBLIC"."log_operate" VALUES (9, 1, 2, 'web_manager', 'save.model', '117.157.107.18', '2019-10-22 18:48:04.866000', '{"id":"article","parentId":"","name":"文章","templatePath":"","editorType":"ueditor","hasChild":false,"onlyUrl":false,"hasImages":false,"hasFiles":false,"searchable":true,"fieldList":["copied","tag","author","editor","description","cover","content"],"requiredFieldList":null,"fieldTextMap":{"author":"作者","content":"正文","copied":"转载","cover":"封面图","description":"描述","editor":"修改","sourceUrl":"来源网址","source":"来源","tag":"标签","title":"标题","url":"链接地址"},"extendList":null}');
INSERT INTO "PUBLIC"."log_operate" VALUES (10, 1, 2, 'web_manager', 'update.category', '117.157.107.18', '2019-10-22 18:48:12.945000', '{"id":1,"name":"测试","parentId":null,"typeId":null,"childIds":null,"tagTypeIds":null,"code":"test","onlyUrl":false,"hasStatic":false,"url":"//dev.publiccms.com:8080/publiccms/aa/","containChild":false,"pageSize":20,"allowContribute":false,"sort":0,"hidden":false,"extendId":null}');
INSERT INTO "PUBLIC"."log_operate" VALUES (11, 1, 2, 'web_manager', 'update.category', '117.157.107.18', '2019-10-22 18:48:25.221000', '{"id":1,"name":"测试","parentId":null,"typeId":null,"childIds":null,"tagTypeIds":null,"code":"test","onlyUrl":false,"hasStatic":false,"url":"//112.126.103.219:6888/jcycms/category/1","containChild":false,"pageSize":20,"allowContribute":false,"sort":0,"hidden":false,"extendId":null}');
INSERT INTO "PUBLIC"."log_operate" VALUES (12, 1, 2, 'web_manager', 'save.content', '117.157.107.18', '2019-10-22 18:48:41.873000', '{"id":1,"title":"test","userId":2,"checkUserId":null,"categoryId":1,"modelId":"article","parentId":null,"quoteContentId":null,"copied":false,"author":null,"editor":"","onlyUrl":false,"hasImages":false,"hasFiles":false,"hasStatic":false,"url":null,"description":"","tagIds":null,"dictionaryValues":null,"cover":null,"childs":0,"scores":0,"comments":0,"clicks":0,"publishDate":1571741321873,"expiryDate":null,"checkDate":null,"updateDate":null,"createDate":1571741321873,"sort":0,"status":2}');


--
-- Name: log_operate_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."log_operate_id_SEQ"', 12, true);


--
-- Data for Name: log_task; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: log_task_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."log_task_id_SEQ"', 1, false);


--
-- Data for Name: log_upload; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."log_upload" VALUES (1, 1, 2, 'web_manager', 'license.dat', 'other', 421, '117.157.107.18', '2019-10-22 18:50:32.276000', '/license.dat');


--
-- Name: log_upload_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."log_upload_id_SEQ"', 1, true);


--
-- Data for Name: sys_app; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_app_client; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: sys_app_client_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_app_client_id_SEQ"', 1, false);


--
-- Name: sys_app_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_app_id_SEQ"', 1, false);


--
-- Data for Name: sys_app_token; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_cluster; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_cluster" VALUES ('a7b3ed94-3fad-4698-a6cc-47471c65b543', '2019-10-22 18:43:49.694000', '2019-10-22 18:52:49.817000', true, 'V4.0.190312');


--
-- Data for Name: sys_config_data; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_dept; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_dept" VALUES (1, 1, 'Technical department', NULL, NULL, 1, 1000, true, true, true);


--
-- Data for Name: sys_dept_category; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_dept_config; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: sys_dept_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_dept_id_SEQ"', 2, true);


--
-- Data for Name: sys_dept_page; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_domain; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_email_token; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_extend; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_extend_field; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: sys_extend_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_extend_id_SEQ"', 1, false);


--
-- Data for Name: sys_module; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_module" VALUES ('app_add', 'sysApp/add', 'sysApp/save', NULL, 'app_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('word_list', 'cmsWord/list', NULL, 'icon-search', 'content_extend', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_client_disable', NULL, 'sysAppClient/disable', NULL, 'app_client_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_client_enable', NULL, 'sysAppClient/enable', NULL, 'app_client_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_client_list', 'sysAppClient/list', NULL, 'icon-coffee', 'user_menu', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_issue', 'sysApp/issueParameters', 'sysAppToken/issue', NULL, 'app_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_delete', NULL, 'sysApp/delete', NULL, 'app_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('app_list', 'sysApp/list', NULL, 'icon-linux', 'system_menu', true, 5);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category', NULL, NULL, 'icon-folder-open-alt', NULL, true, 5);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_add', 'cmsCategory/add', 'cmsCategory/addMore,cmsCategory/virify,cmsTemplate/lookup,cmsCategory/categoryPath,cmsCategory/contentPath,file/doUpload,cmsCategory/save', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_delete', NULL, 'cmsCategory/delete', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_extend', NULL, NULL, 'icon-road', 'category', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_menu', 'cmsCategory/list', NULL, 'icon-folder-open', 'category', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_move', 'cmsCategory/moveParameters', 'cmsCategory/move,cmsCategory/lookup', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_publish', 'cmsCategory/publishParameters', 'cmsCategory/publish', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_push', 'cmsCategory/push_page', 'cmsPlace/push,cmsPlace/add,cmsPlace/save', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_type_add', 'cmsCategoryType/add', 'cmsCategoryType/save', NULL, 'category_type_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_type_change', 'cmsCategory/changeTypeParameters', 'cmsCategory/changeType', NULL, 'category_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_type_delete', NULL, 'cmsCategoryType/delete', NULL, 'category_type_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('category_type_list', 'cmsCategoryType/list', NULL, 'icon-road', 'category_extend', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('clearcache', NULL, 'clearCache', NULL, NULL, false, 10);
INSERT INTO "PUBLIC"."sys_module" VALUES ('comment_list', 'cmsComment/list', 'sysUser/lookup', 'icon-comment', 'content_extend', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('comment_check', NULL, 'cmsComment/check', NULL, 'comment_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('comment_uncheck', NULL, 'cmsComment/uncheck', NULL, 'comment_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('comment_delete', NULL, 'cmsComment/delete', NULL, 'comment_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_add', 'sysConfig/add', 'sysConfig/save', NULL, 'config_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_data_delete', NULL, 'sysConfigData/delete', NULL, 'config_data_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_data_edit', NULL, 'sysConfigData/save,sysConfigData/edit', NULL, 'config_data_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_data_list', 'sysConfigData/list', NULL, 'icon-cog', 'system_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_delete', NULL, 'sysConfig/delete', NULL, 'config_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_list', 'sysConfig/list', NULL, 'icon-cogs', 'config_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_list_data_dictionary', 'cmsDictionary/lookup', NULL, NULL, 'config_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('config_menu', NULL, NULL, 'icon-gear', 'develop', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content', NULL, NULL, 'icon-file-text-alt', NULL, true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_add', 'cmsContent/add', 'cmsContent/addMore,file/doUpload,cmsContent/lookup,cmsContent/lookup_list,cmsContent/save,ueditor,ckeditor/upload,kindeditor/upload', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_export', NULL, 'cmsContent/export', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_check', NULL, 'cmsContent/check', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_delete', NULL, 'cmsContent/delete', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_extend', NULL, NULL, 'icon-road', 'content', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_menu', 'cmsContent/list', 'sysUser/lookup', 'icon-book', 'content', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_move', 'cmsContent/moveParameters', 'cmsContent/move', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_publish', NULL, 'cmsContent/publish', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_push', 'cmsContent/push', 'cmsContent/push_content,cmsContent/push_content_list,cmsContent/push_to_content,cmsContent/push_page,cmsContent/push_page_list,cmsPlace/add,cmsPlace/save,cmsContent/related,cmsContent/unrelated,cmsPlace/delete', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_recycle_delete', NULL, 'cmsContent/realDelete', NULL, 'content_recycle_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_recycle_list', 'cmsRecycleContent/list', 'sysUser/lookup', 'icon-trash', 'content_extend', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_recycle_recycle', NULL, 'cmsContent/recycle', NULL, 'content_recycle_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_refresh', NULL, 'cmsContent/refresh', NULL, 'content_menu', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_category', 'cmsCategory/lookupByModelId', NULL, NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_category_type', 'cmsCategoryType/lookup', NULL, NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_content', 'cmsContent/lookup', 'cmsContent/lookup_list', NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_tag_type', 'cmsTagType/lookup', NULL, NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_template', 'cmsTemplate/lookup', NULL, NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_select_user', 'sysUser/lookup', NULL, NULL, 'content_add', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_sort', 'cmsContent/sortParameters', 'cmsContent/sort', NULL, 'content_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_uncheck', NULL, 'cmsContent/uncheck', NULL, 'content_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('content_view', 'cmsContent/view', NULL, NULL, 'content_menu', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dept_add', 'sysDept/add', 'sysDept/lookup,sysUser/lookup,sysDept/save', NULL, 'dept_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dept_delete', NULL, 'sysDept/delete', NULL, 'dept_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dept_list', 'sysDept/list', 'sysDept/lookup,sysUser/lookup', 'icon-group', 'user_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dept_user_list', 'sysDept/userList', 'sysDept/addUser,sysDept/saveUser,sysDept/enableUser,sysDept/disableUser', NULL, 'dept_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('develop', NULL, NULL, 'icon-puzzle-piece', NULL, true, 7);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dictionary_add', 'cmsDictionary/add', 'cmsDictionary/save,cmsDictionary/virify', NULL, 'dictionary_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dictionary_delete', NULL, 'cmsDictionary/delete', NULL, 'dictionary_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('dictionary_list', 'cmsDictionary/list', NULL, 'icon-book', 'system_menu', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('domain_config', 'sysDomain/config', 'sysDomain/saveConfig,cmsTemplate/directoryLookup,cmsTemplate/lookup', NULL, 'domain_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('domain_list', 'sysDomain/domainList', NULL, 'icon-qrcode', 'config_menu', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('file_menu', NULL, NULL, 'icon-folder-close-alt', 'develop', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_login', 'log/login', 'sysUser/lookup', 'icon-signin', 'log_menu', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_login_delete', NULL, 'logLogin/delete', NULL, 'log_login', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_menu', NULL, NULL, 'icon-list-alt', 'maintenance', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_operate', 'log/operate', 'sysUser/lookup', 'icon-list-alt', 'log_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_operate_delete', NULL, 'logOperate/delete', NULL, 'log_operate', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_operate_view', 'log/operateView', NULL, NULL, 'log_operate', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_task', 'log/task', 'sysUser/lookup', 'icon-time', 'log_menu', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_task_delete', NULL, 'logTask/delete', NULL, 'log_task', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_task_view', 'log/taskView', NULL, NULL, 'log_task', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('log_upload', 'log/upload', 'sysUser/lookup', 'icon-list-alt', 'log_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('maintenance', NULL, NULL, 'icon-cogs', NULL, true, 6);
INSERT INTO "PUBLIC"."sys_module" VALUES ('model_add', 'cmsModel/add', 'cmsModel/save,cmsTemplate/lookup', NULL, 'model_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('model_delete', NULL, 'cmsModel/delete', NULL, 'model_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('model_list', 'cmsModel/list', NULL, 'icon-th-large', 'config_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself', NULL, NULL, 'icon-key', NULL, true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content', 'myself/contentList', NULL, 'icon-book', 'myself_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content_add', 'cmsContent/add', 'cmsContent/addMore,file/doUpload,cmsContent/lookup,cmsContent/lookup_list,cmsContent/save,ueditor,ckeditor/upload,kindeditor/upload', NULL, 'myself_content', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content_delete', NULL, 'cmsContent/delete', NULL, 'myself_content', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content_publish', NULL, 'cmsContent/publish', NULL, 'myself_content', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content_push', 'cmsContent/push', 'cmsContent/push_content,cmsContent/push_content_list,cmsContent/push_to_content,cmsContent/push_page,cmsContent/push_page_list,cmsContent/push_to_place,cmsContent/related', NULL, 'myself_content', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_content_refresh', NULL, 'cmsContent/refresh', NULL, 'myself_content', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_log_login', 'myself/logLogin', NULL, 'icon-signin', 'myself_menu', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_log_operate', 'myself/logOperate', NULL, 'icon-list-alt', 'myself_menu', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_menu', NULL, NULL, 'icon-user', 'myself', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_password', 'myself/password', 'changePassword', 'icon-key', 'myself_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_token', 'myself/userTokenList', 'sysUserToken/delete', 'icon-unlock-alt', 'myself_menu', true, 5);
INSERT INTO "PUBLIC"."sys_module" VALUES ('myself_device', 'myself/userDeviceList', 'sysAppClient/enable,sysAppClient/disable', 'icon-linux', 'myself_menu', true, 5);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page', NULL, NULL, 'icon-tablet', NULL, true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_list', 'cmsPage/list', 'cmsPage/metadata,sysUser/lookup,cmsContent/lookup,cmsContent/lookup_list,cmsCategory/lookup', 'icon-globe', 'page_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_menu', NULL, NULL, 'icon-globe', 'page', true, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_metadata', 'cmsPage/metadata', 'cmsPage/save', NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_publish', NULL, 'cmsTemplate/publish', NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_save', NULL, 'cmsPage/save,file/doUpload,cmsPage/clearCache', NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_category', 'cmsCategory/lookup', NULL, NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_category_type', 'cmsCategoryType/lookup', NULL, NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_content', 'cmsContent/lookup', 'cmsContent/lookup_list', NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_tag_type', 'cmsTagType/lookup', NULL, NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_template', 'cmsTemplate/lookup', NULL, NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('page_select_user', 'sysUser/lookup', NULL, NULL, 'page_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_add', 'cmsPlace/add', 'cmsContent/lookup,cmsPlace/lookup,cmsPlace/lookup_content_list,file/doUpload,cmsPlace/save', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_check', NULL, 'cmsPlace/check,cmsPlace/uncheck', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_clear', NULL, 'cmsPlace/clear', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_data_list', 'cmsPlace/dataList', 'cmsPlace/export', NULL, 'place_list', false, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_delete', NULL, 'cmsPlace/delete', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_list', 'cmsPlace/list', 'sysUser/lookup', 'icon-list-alt', 'page_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_publish', 'cmsPlace/publish_place', 'cmsTemplate/publishPlace', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_refresh', NULL, 'cmsPlace/refresh', NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_content', 'placeTemplate/content', 'cmsTemplate/help,cmsTemplate/savePlace,cmsTemplate/chipLookup,cmsWebFile/lookup,cmsWebFile/contentForm,placeTemplate/form', NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_data_dictionary', 'cmsDictionary/lookup', NULL, NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_fragment', 'cmsTemplate/ftlLookup', NULL, NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_help', 'cmsTemplate/help', NULL, NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_list', 'placeTemplate/list', NULL, 'icon-list-alt', 'file_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_metadata', 'placeTemplate/metadata', 'cmsTemplate/savePlaceMetaData', NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_place', 'placeTemplate/lookup', NULL, NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_template_webfile', 'cmsWebFile/lookup', NULL, NULL, 'place_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('place_view', 'cmsPlace/view', NULL, NULL, 'place_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('report_user', 'report/user', NULL, 'icon-male', 'user_menu', true, 5);
INSERT INTO "PUBLIC"."sys_module" VALUES ('role_add', 'sysRole/add', 'sysRole/save', NULL, 'role_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('role_delete', NULL, 'sysRole/delete', NULL, 'role_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('role_list', 'sysRole/list', NULL, 'icon-user-md', 'user_menu', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('system_menu', NULL, NULL, 'icon-cogs', 'maintenance', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_add', 'cmsTag/add', 'cmsTagType/lookup,cmsTag/save', NULL, 'tag_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_delete', NULL, 'cmsTag/delete', NULL, 'tag_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_list', 'cmsTag/list', 'cmsTagType/lookup', 'icon-tag', 'content_extend', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_type_delete', NULL, 'cmsTagType/delete', NULL, 'tag_type_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_type_list', 'cmsTagType/list', NULL, 'icon-tags', 'category_extend', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('tag_type_save', 'cmsTagType/add', 'cmsTagType/save', NULL, 'tag_type_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_add', 'sysTask/add', 'sysTask/save,sysTask/example,taskTemplate/lookup', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_delete', NULL, 'sysTask/delete', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_list', 'sysTask/list', NULL, 'icon-time', 'system_menu', true, 2);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_pause', NULL, 'sysTask/pause', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_recreate', NULL, 'sysTask/recreate', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_resume', NULL, 'sysTask/resume', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_runonce', NULL, 'sysTask/runOnce', NULL, 'task_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_template_content', 'taskTemplate/content', 'taskTemplate/save,taskTemplate/chipLookup,cmsTemplate/help,placeTemplate/form,cmsWebFile/contentForm', NULL, 'task_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_template_delete', NULL, 'taskTemplate/delete', NULL, 'task_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_template_fragment', 'taskTemplate/chipLookup', NULL, NULL, 'task_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_template_help', 'cmsTemplate/help', NULL, NULL, 'task_template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('task_template_list', 'taskTemplate/list', NULL, 'icon-time', 'file_menu', true, 3);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_content', 'cmsTemplate/content', 'cmsTemplate/save,cmsTemplate/chipLookup,cmsWebFile/lookup,placeTemplate/form,cmsWebFile/contentForm,cmsTemplate/demo,cmsTemplate/help,cmsTemplate/upload,cmsTemplate/doUpload', NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_content-type', 'cmsTemplate/contentTypeLookup', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_content_form', 'cmsTemplate/contentForm', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_data_dictionary', 'cmsDictionary/lookup', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_delete', NULL, 'cmsTemplate/delete', NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_demo', 'cmsTemplate/demo', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_fragment', 'cmsTemplate/ftlLookup', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_help', 'cmsTemplate/help', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_list', 'cmsTemplate/list', 'cmsTemplate/directory', 'icon-code', 'file_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_metadata', 'cmsTemplate/metadata', 'cmsTemplate/saveMetadata', NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_place', 'placeTemplate/lookup', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_place_form', 'placeTemplate/form', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_upload', 'cmsTemplate/upload', 'cmsTemplate/doUpload', NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('template_website_file', 'cmsWebFile/lookup', NULL, NULL, 'template_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('user_add', 'sysUser/add', 'sysDept/lookup,sysUser/save', NULL, 'user_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('user_disable', NULL, 'sysUser/disable', NULL, 'user_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('user_enable', NULL, 'sysUser/enable', NULL, 'user_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('user_list', 'sysUser/list', NULL, 'icon-user', 'user_menu', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('user_menu', NULL, NULL, 'icon-user', 'maintenance', true, 1);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_content', 'cmsWebFile/content', 'cmsWebFile/save', NULL, 'webfile_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_directory', 'cmsWebFile/directory', 'cmsWebFile/createDirectory', NULL, 'webfile_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_list', 'cmsWebFile/list', NULL, 'icon-globe', 'file_menu', true, 4);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_unzip', 'cmsWebFile/unzipParameters', 'cmsWebFile/unzip', NULL, 'webfile_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_upload', 'cmsWebFile/upload', 'cmsWebFile/doUpload,cmsWebFile/check', NULL, 'webfile_list', false, 0);
INSERT INTO "PUBLIC"."sys_module" VALUES ('webfile_zip', NULL, 'cmsWebFile/zip', NULL, 'webfile_list', false, 0);


--
-- Data for Name: sys_module_lang; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_disable', 'ja', '禁止');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_enable', 'en', 'Enable');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_enable', 'zh', '启用');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_list', 'ja', 'クライアント管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_issue', 'ja', '発行権限');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_list', 'en', 'Application Authorization');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_list', 'zh', '应用授权');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category', 'ja', '分類');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_extend', 'en', 'Category extension');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_extend', 'zh', '分类扩展');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_menu', 'ja', '分類管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_move', 'en', 'Move');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_move', 'zh', '移动');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_publish', 'ja', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_push', 'en', 'Push');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_push', 'zh', '推荐');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_change', 'en', 'Change category type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_change', 'zh', '修改类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_list', 'en', 'Category type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_list', 'zh', '分类类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('clearcache', 'ja', 'キャッシュをリフレッシュする');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_check', 'en', 'Check');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_check', 'zh', '审核');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_list', 'en', 'Comment management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_list', 'zh', '评论管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_uncheck', 'ja', '審査を取り消す');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_add', 'zh', '添加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_delete', 'ja', 'データをクリア');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_edit', 'en', 'Edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_edit', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_list', 'ja', 'サイト設定');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_delete', 'zh', '删除配置');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list', 'ja', 'サイト設定管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list_data_dictionary', 'en', 'Select data dictionary');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list_data_dictionary', 'zh', '选择数据字典');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_menu', 'ja', '設定管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content', 'en', 'Content');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content', 'zh', '内容');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_check', 'en', 'Check');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_check', 'zh', '审核');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_export', 'en', 'Export');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_export', 'zh', '导出');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_extend', 'ja', 'コンテンツ拡張');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_menu', 'en', 'Content management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_menu', 'zh', '内容管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_move', 'ja', '移動');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_publish', 'en', 'Publish');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_publish', 'zh', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_push', 'ja', 'おすすめ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_delete', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_list', 'ja', 'コンテンツごみ箱');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_recycle', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_recycle', 'zh', '还原');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_refresh', 'ja', 'リフレッシュ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category', 'en', 'Select category');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category', 'zh', '选择分类');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category_type', 'ja', '分類タイプを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_content', 'en', 'Select content');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_content', 'zh', '选择内容');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_tag_type', 'ja', 'タグの種類を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_template', 'en', 'Select template');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_template', 'zh', '选择模板');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_user', 'ja', 'ユーザーを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_sort', 'en', 'Sort');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_sort', 'zh', '置顶');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_uncheck', 'ja', '審査を取り消す');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_view', 'en', 'View');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_view', 'zh', '查看');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_list', 'ja', '部門管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_user_list', 'en', 'Department user management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_user_list', 'zh', '人员管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('develop', 'ja', '開発');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_add', 'zh', '添加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_list', 'en', 'Dictionary management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_list', 'zh', '数据字典');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_config', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_list', 'en', 'Domain management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_list', 'zh', '绑定域名');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('file_menu', 'ja', 'ファイル管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login', 'en', 'Login log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login', 'zh', '登录日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_menu', 'en', 'Log management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_menu', 'zh', '日志管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate', 'ja', '操作ログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_view', 'ja', '見る');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task', 'en', 'Task log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task', 'zh', '任务计划日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_view', 'en', 'View');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_view', 'zh', '查看');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_upload', 'ja', 'ファイルアップロードログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('maintenance', 'en', 'Maintenance');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('maintenance', 'zh', '维护');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_list', 'ja', 'コンテンツモデル管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself', 'en', 'Myself');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself', 'zh', '个人');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content', 'ja', 'マイコンテンツ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_add', 'en', 'Add');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_add', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_publish', 'en', 'Publish');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_publish', 'zh', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_push', 'ja', 'おすすめ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_refresh', 'en', 'Refresh');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_refresh', 'zh', '刷新');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_device', 'ja', '私の端末');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_login', 'en', 'My login log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_login', 'zh', '我的登录日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_operate', 'ja', 'マイ操作ログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_menu', 'en', 'My account');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_menu', 'zh', '与我相关');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_password', 'ja', 'パスワードを変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_token', 'en', 'My login token');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_token', 'zh', '我的登录授权');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page', 'ja', 'ページ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_list', 'en', 'Page management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_list', 'zh', '页面管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_menu', 'ja', 'ページのメンテナンス');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_metadata', 'en', 'Metadata management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_metadata', 'zh', '元数据管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_publish', 'ja', 'ページを生成する');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_save', 'en', 'Save configuration');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_save', 'zh', '保存页面配置');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category', 'ja', '分類を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category_type', 'en', 'Select category type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category_type', 'zh', '选择分类类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_content', 'ja', 'コンテンツを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_tag_type', 'en', 'Select tag type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_tag_type', 'zh', '选择标签类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_template', 'ja', '选择模板テンプレートを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_user', 'en', 'Select user');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_user', 'zh', '选择用户');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_add', 'ja', '推奨ビットデータの追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_check', 'en', 'Check');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_check', 'zh', '审核推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_clear', 'ja', '推奨ビットデータのクリア');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_data_list', 'en', 'Page fragment data');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_data_list', 'zh', '推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_delete', 'ja', '推奨ビットデータを削除する');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_list', 'en', 'Page fragment management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_list', 'zh', '页面片段管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_publish', 'ja', 'リリース');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_refresh', 'en', 'Refresh');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_refresh', 'zh', '刷新推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_content', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_data_dictionary', 'en', 'Select data dictionary');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_data_dictionary', 'zh', '选择数据字典');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_fragment', 'ja', 'テンプレートフラグメント');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_help', 'en', 'Template help');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_help', 'zh', '模板帮助');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_list', 'ja', 'ページフラグメントテンプレート');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_metadata', 'en', 'Edit metadata');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_metadata', 'zh', '修改元数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_place', 'ja', 'ページフラグメント');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_webfile', 'en', 'Website file');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_webfile', 'zh', '网站文件');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_view', 'ja', '推奨ビットデータを見る');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('report_user', 'en', 'User report');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('report_user', 'zh', '用户数据监控');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_list', 'ja', '役割管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('system_menu', 'en', 'System maintenance');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('system_menu', 'zh', '系统维护');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_list', 'ja', 'ラベル管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_delete', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_list', 'ja', 'タグの分類');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_save', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_save', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_list', 'ja', 'タスク計画');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_pause', 'en', 'Pause');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_pause', 'zh', '暂停');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_recreate', 'ja', 'リセット');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_resume', 'en', 'Resume');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_resume', 'zh', '恢复');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_runonce', 'ja', '実行');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_content', 'en', 'Edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_content', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_fragment', 'en', 'Task script fragment');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_fragment', 'zh', '任务计划脚本片段');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_help', 'ja', 'ヘルプ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_list', 'en', 'Task template management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_list', 'zh', '任务计划脚本');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content-type', 'en', 'Select content-type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content-type', 'zh', '选择content-type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content_form', 'ja', 'コンテンツ送信フォーム');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_data_dictionary', 'en', 'Select data dictionary');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_data_dictionary', 'zh', '选择数据字典');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_demo', 'en', 'Template example');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_demo', 'zh', '模板示例');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_fragment', 'ja', 'テンプレートフラグメント');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_help', 'en', 'Template help');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_help', 'zh', '模板帮助');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_list', 'ja', 'テンプレートファイル管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_metadata', 'en', 'Edit metadata');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_metadata', 'zh', '修改元数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place', 'ja', 'ページフラグメント');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place_form', 'en', 'Page fragment data contribute form');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place_form', 'zh', '页面片段投稿表单');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_upload', 'ja', 'テンプレートをアップロードする');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_website_file', 'en', 'Website file');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_website_file', 'zh', '网站文件');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_disable', 'en', 'Disable');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_disable', 'zh', '禁用');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_enable', 'ja', 'オン');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_list', 'en', 'User management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_list', 'zh', '用户管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_menu', 'ja', 'ユーザー管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_content', 'en', 'Edit file');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_content', 'zh', '修改文件');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_directory', 'ja', '目録を作成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_list', 'en', 'Website file management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_list', 'zh', '网站文件管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_unzip', 'ja', '解凍');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_upload', 'en', 'Upload');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_upload', 'zh', '上传');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_zip', 'ja', '圧縮');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('word_list', 'en', 'Search word management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('word_list', 'zh', '搜索词管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_disable', 'en', 'Disable');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_disable', 'zh', '禁用');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_enable', 'ja', 'オン');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_list', 'en', 'Application client management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_client_list', 'zh', '客户端管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_issue', 'en', 'Issue authorization');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_issue', 'zh', '颁发授权');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('app_list', 'ja', 'app権限');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category', 'en', 'Category');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category', 'zh', '分类');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_extend', 'ja', '分類拡張');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_menu', 'en', 'Category management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_menu', 'zh', '分类管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_move', 'ja', '移動');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_publish', 'en', 'Publish');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_publish', 'zh', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_push', 'ja', 'おすすめ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_add', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_change', 'ja', 'タイプ変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_delete', 'en', 'test');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('category_type_list', 'ja', '分類タイプ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('clearcache', 'en', 'Clear cache');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('clearcache', 'zh', '刷新缓存');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_check', 'ja', '審査');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_list', 'ja', 'コメント管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_uncheck', 'en', 'Uncheck');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('comment_uncheck', 'zh', '取消审核');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_delete', 'en', 'Clear config data');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_delete', 'zh', '清空配置');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_edit', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_list', 'en', 'Site configuration');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_data_list', 'zh', '站点配置');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_delete', 'ja', '設定を削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list', 'en', 'Site config management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list', 'zh', '站点配置管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_list_data_dictionary', 'ja', 'データ辞書を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_menu', 'en', 'Configuration management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('config_menu', 'zh', '配置管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content', 'ja', 'コンテンツ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_check', 'ja', '審査');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_export', 'ja', '輸出');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_extend', 'en', 'Content extension');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_extend', 'zh', '内容扩展');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_menu', 'ja', 'コンテンツ管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_move', 'en', 'Move');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_move', 'zh', '移动');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_publish', 'ja', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_push', 'en', 'Push');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_push', 'zh', '推荐');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_list', 'en', 'Content recycle');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_list', 'zh', '内容回收站');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_recycle_recycle', 'ja', '取り戻し');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_refresh', 'en', 'Refresh');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_refresh', 'zh', '刷新');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category', 'ja', '分類を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category_type', 'en', 'Select category type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_category_type', 'zh', '选择分类类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_content', 'ja', 'コンテンツを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_tag_type', 'en', 'Select tag type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_tag_type', 'zh', '选择标签类型');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_template', 'ja', 'テンプレートを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_user', 'en', 'Select user');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_select_user', 'zh', '选择用户');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_sort', 'ja', 'トッピング');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_uncheck', 'en', 'Uncheck');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_uncheck', 'zh', '撤销审核');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('content_view', 'ja', '見る');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_list', 'en', 'Department management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_list', 'zh', '部门管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dept_user_list', 'ja', '人事管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('develop', 'en', 'Development');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('develop', 'zh', '开发');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_add', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('dictionary_list', 'ja', 'データ辞書');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_config', 'en', 'Edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_config', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('domain_list', 'ja', 'ドメイン名をバインド');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('file_menu', 'en', 'File maintenance');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('file_menu', 'zh', '文件管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login', 'ja', 'ログインログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_login_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_menu', 'ja', 'ログ管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate', 'en', 'Operate log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate', 'zh', '操作日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_view', 'en', 'View');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_operate_view', 'zh', '查看');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task', 'ja', 'タスク計画ログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_task_view', 'ja', '見る');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_upload', 'en', 'Upload log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('log_upload', 'zh', '文件上传日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('maintenance', 'ja', '維持');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_list', 'en', 'Model management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('model_list', 'zh', '内容模型管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself', 'ja', '個人');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content', 'en', 'My content');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content', 'zh', '我的内容');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_add', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_publish', 'ja', '生成');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_push', 'en', 'Push');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_push', 'zh', '推荐');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_content_refresh', 'ja', 'リフレッシュ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_device', 'en', 'My device');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_device', 'zh', '我的设备');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_login', 'ja', 'マイログインログ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_operate', 'en', 'My operate log');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_log_operate', 'zh', '我的操作日志');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_menu', 'ja', '私に関連する情報');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_password', 'en', 'Change password');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_password', 'zh', '修改密码');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('myself_token', 'ja', '私のログイン授権');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page', 'en', 'Page');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page', 'zh', '页面');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_list', 'ja', 'ページ管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_menu', 'en', 'Page maintenance');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_menu', 'zh', '页面维护');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_metadata', 'ja', 'メタデータ管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_publish', 'en', 'Publish');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_publish', 'zh', '生成页面');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_save', 'ja', 'ページ設定を保存');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category', 'en', 'Select category');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category', 'zh', '选择分类');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_category_type', 'ja', '分類タイプを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_content', 'en', 'Select content');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_content', 'zh', '选择内容');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_tag_type', 'ja', 'タグの種類を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_template', 'en', 'Select template');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_template', 'zh', '选择模板');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('page_select_user', 'ja', 'ユーザーを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_add', 'zh', '增加/修改推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_check', 'ja', '推奨ビットデータを確認する');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_clear', 'en', 'Clear');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_clear', 'zh', '清空推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_data_list', 'ja', '推奨ビットデータ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_delete', 'en', 'data');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_delete', 'zh', '删除推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_list', 'ja', 'ページフラグメント管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_publish', 'en', 'Publish');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_publish', 'zh', '发布');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_refresh', 'ja', '刷新推荐位数据推奨ビットデータをリフレッシュする');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_content', 'en', 'Edit template');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_content', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_data_dictionary', 'ja', 'データ辞書を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_fragment', 'en', 'Template fragment');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_fragment', 'zh', '模板片段');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_help', 'ja', 'テンプレートのヘルプ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_list', 'en', 'Page fragment template');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_list', 'zh', '页面片段模板');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_metadata', 'ja', 'メタデータの変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_place', 'en', 'Page fragment');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_place', 'zh', '页面片段');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_template_webfile', 'ja', 'ウェブサイトファイル');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_view', 'en', 'View');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('place_view', 'zh', '查看推荐位数据');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('report_user', 'ja', 'ユーザーデータの監視');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_list', 'en', 'Role management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('role_list', 'zh', '角色管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('system_menu', 'ja', 'システムメンテナンス');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_list', 'en', 'Tag management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_list', 'zh', '标签管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_list', 'en', 'Tag type');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_list', 'zh', '标签分类');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('tag_type_save', 'ja', '追加/変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_delete', 'ja', '削除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_list', 'en', 'Task management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_list', 'zh', '任务计划');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_pause', 'ja', '停止');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_recreate', 'en', 'Recreate');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_recreate', 'zh', '重新初始化');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_resume', 'ja', '回復');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_runonce', 'en', 'Run once');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_runonce', 'zh', '立刻执行');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_content', 'ja', '変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_fragment', 'ja', 'タスク計画スクリプト断片');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_help', 'en', 'help');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_help', 'zh', '帮助');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('task_template_list', 'ja', 'タスク計画スクリプト');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content', 'en', 'Edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content', 'zh', '修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content-type', 'ja', 'content-typeを選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content_form', 'en', 'Content contribute form');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_content_form', 'zh', '内容投稿表单');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_data_dictionary', 'ja', 'データ辞書を選択');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_delete', 'en', 'Delete');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_delete', 'zh', '删除');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_demo', 'ja', 'テンプレートの例');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_fragment', 'en', 'Template fragment');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_fragment', 'zh', '模板片段');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_help', 'ja', 'テンプレートヘルプ');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_list', 'en', 'Template management');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_list', 'zh', '模板文件管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_metadata', 'ja', 'メタデータの変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place', 'en', 'Page fragment');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place', 'zh', '页面片段');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_place_form', 'ja', 'ページフラグメント提出フォーム');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_upload', 'en', 'Upload template');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_upload', 'zh', '上传模板');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('template_website_file', 'ja', 'ウェブサイトファイル');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_add', 'en', 'Add/edit');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_add', 'zh', '增加/修改');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_disable', 'ja', '禁止');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_enable', 'en', 'Enable');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_enable', 'zh', '启用');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_list', 'ja', 'ユーザー管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_menu', 'en', 'User maintenance');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('user_menu', 'zh', '用户管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_content', 'ja', 'ファイルの変更');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_directory', 'en', 'Create Directory');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_directory', 'zh', '新建目录');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_list', 'ja', 'ウェブサイトのファイル管理');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_unzip', 'en', 'Decompress');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_unzip', 'zh', '解压缩');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_upload', 'ja', 'アップロード');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_zip', 'en', 'Compress');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('webfile_zip', 'zh', '压缩');
INSERT INTO "PUBLIC"."sys_module_lang" VALUES ('word_list', 'ja', '検索ワード管理');


--
-- Data for Name: sys_role; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_role" VALUES (1, 1, 'superuser', true, false);


--
-- Data for Name: sys_role_authorized; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Name: sys_role_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_role_id_SEQ"', 1, true);


--
-- Data for Name: sys_role_module; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--



--
-- Data for Name: sys_role_user; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_role_user" VALUES (1, 1);


--
-- Data for Name: sys_site; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_site" VALUES (1, NULL, 'CMS', true, '//112.126.103.219:6888/jcycms/webfile/', false, '//112.126.103.219:6888/jcycms/', false);


--
-- Name: sys_site_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_site_id_SEQ"', 1, true);


--
-- Data for Name: sys_task; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_task" VALUES (1, 1, '重新生成所有页面', 0, '0 0/2 * * ?', '重新生成所有页面', '/publishPage.task', NULL);
INSERT INTO "PUBLIC"."sys_task" VALUES (3, 1, '清理日志', 0, '0 0 1 * ?', '清理三个月以前的日志', '/clearLog.task', NULL);
INSERT INTO "PUBLIC"."sys_task" VALUES (5, 1, '重新生成所有分类页面', 0, '0 0/6 * * ?', '重新生成所有分类页面', '/publishCategory.task', NULL);
INSERT INTO "PUBLIC"."sys_task" VALUES (2, 1, '重建索引', 0, '0 0 1 1 ? 2099', '重建全部索引', '/reCreateIndex.task', NULL);
INSERT INTO "PUBLIC"."sys_task" VALUES (4, 1, '重新生成内容页面', 0, '0 0 1 1 ? 2099', '重新生成内容页面', '/publishContent.task', NULL);
INSERT INTO "PUBLIC"."sys_task" VALUES (7, 1, '重新生成全站', 0, '0 0 1 1 ? 2099', '重新生成全站', '/publishAll.task', NULL);


--
-- Name: sys_task_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_task_id_SEQ"', 7, true);


--
-- Data for Name: sys_user; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_user" VALUES (2, 1, 'admin', '1464712ec3d5112d4695f2b864ae2b644b2ba754e10fd48afd4003847dfbb3f33253ee1cfe6e72deb652d054f2bed60a6d55d49cb7707c8a5d45cec34fd5bd3c', '1847222354', true, 'admin', 1, true, '1', 'master@sanluan.com', false, true, false, '2019-10-22 18:44:21.019000', '117.157.107.18', 2, '2019-01-01 00:00:00');


--
-- Name: sys_user_id_SEQ; Type: SEQUENCE SET; Schema: PUBLIC; Owner: SYSTEM
--

SELECT sys_catalog.setval('"PUBLIC"."sys_user_id_SEQ"', 2, true);


--
-- Data for Name: sys_user_token; Type: TABLE DATA; Schema: PUBLIC; Owner: SYSTEM
--

INSERT INTO "PUBLIC"."sys_user_token" VALUES ('aaf58adf-f30f-4129-b8a2-7063d1456f1d', 1, 2, 'web_manager', '2019-10-22 18:29:47.869000', '2019-11-21 18:29:47.869000', '127.0.0.1');
INSERT INTO "PUBLIC"."sys_user_token" VALUES ('637aa346-8830-4f38-90ee-d87920108a29', 1, 2, 'web_manager', '2019-10-22 18:44:21.021000', '2019-11-21 18:44:21.021000', '117.157.107.18');


--
-- Name: cms_category cms_category_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category"
    ADD CONSTRAINT "cms_category_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_category_attribute cms_category_attribute_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category_attribute"
    ADD CONSTRAINT "cms_category_attribute_PKEY" PRIMARY KEY ("category_id");


--
-- Name: cms_category_model cms_category_model_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category_model"
    ADD CONSTRAINT "cms_category_model_PKEY" PRIMARY KEY ("category_id", "model_id");


--
-- Name: cms_category_type cms_category_type_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category_type"
    ADD CONSTRAINT "cms_category_type_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_comment cms_comment_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_comment"
    ADD CONSTRAINT "cms_comment_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_content cms_content_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content"
    ADD CONSTRAINT "cms_content_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_content_attribute cms_content_attribute_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content_attribute"
    ADD CONSTRAINT "cms_content_attribute_PKEY" PRIMARY KEY ("content_id");


--
-- Name: cms_content_file cms_content_file_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content_file"
    ADD CONSTRAINT "cms_content_file_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_content_related cms_content_related_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_content_related"
    ADD CONSTRAINT "cms_content_related_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_dictionary cms_dictionary_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_dictionary"
    ADD CONSTRAINT "cms_dictionary_PKEY" PRIMARY KEY ("id", "site_id");


--
-- Name: cms_dictionary_data cms_dictionary_data_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_dictionary_data"
    ADD CONSTRAINT "cms_dictionary_data_PKEY" PRIMARY KEY ("dictionary_id", "site_id", "value");


--
-- Name: cms_place cms_place_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_place"
    ADD CONSTRAINT "cms_place_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_place_attribute cms_place_attribute_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_place_attribute"
    ADD CONSTRAINT "cms_place_attribute_PKEY" PRIMARY KEY ("place_id");


--
-- Name: cms_tag cms_tag_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_tag"
    ADD CONSTRAINT "cms_tag_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_tag_type cms_tag_type_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_tag_type"
    ADD CONSTRAINT "cms_tag_type_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_word cms_word_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_word"
    ADD CONSTRAINT "cms_word_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_category code; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_category"
    ADD CONSTRAINT "code" UNIQUE ("site_id", "code");


--
-- Name: sys_app key; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app"
    ADD CONSTRAINT "key" UNIQUE ("app_key");


--
-- Name: log_login log_login_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_login"
    ADD CONSTRAINT "log_login_PKEY" PRIMARY KEY ("id");


--
-- Name: log_operate log_operate_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_operate"
    ADD CONSTRAINT "log_operate_PKEY" PRIMARY KEY ("id");


--
-- Name: log_task log_task_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_task"
    ADD CONSTRAINT "log_task_PKEY" PRIMARY KEY ("id");


--
-- Name: log_upload log_upload_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."log_upload"
    ADD CONSTRAINT "log_upload_PKEY" PRIMARY KEY ("id");


--
-- Name: cms_word name; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."cms_word"
    ADD CONSTRAINT "name" UNIQUE ("name", "site_id");


--
-- Name: sys_user name_u; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_user"
    ADD CONSTRAINT "name_u" UNIQUE ("name", "site_id");


--
-- Name: sys_user nick_name; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_user"
    ADD CONSTRAINT "nick_name" UNIQUE ("nick_name", "site_id");


--
-- Name: sys_app_client site_id; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app_client"
    ADD CONSTRAINT "site_id" UNIQUE ("site_id", "channel", "uuid");


--
-- Name: sys_app sys_app_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app"
    ADD CONSTRAINT "sys_app_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_app_client sys_app_client_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app_client"
    ADD CONSTRAINT "sys_app_client_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_app_token sys_app_token_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_app_token"
    ADD CONSTRAINT "sys_app_token_PKEY" PRIMARY KEY ("auth_token");


--
-- Name: sys_cluster sys_cluster_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_cluster"
    ADD CONSTRAINT "sys_cluster_PKEY" PRIMARY KEY ("uuid");


--
-- Name: sys_config_data sys_config_data_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_config_data"
    ADD CONSTRAINT "sys_config_data_PKEY" PRIMARY KEY ("code", "site_id");


--
-- Name: sys_dept sys_dept_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_dept"
    ADD CONSTRAINT "sys_dept_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_dept_category sys_dept_category_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_dept_category"
    ADD CONSTRAINT "sys_dept_category_PKEY" PRIMARY KEY ("category_id", "dept_id");


--
-- Name: sys_dept_config sys_dept_config_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_dept_config"
    ADD CONSTRAINT "sys_dept_config_PKEY" PRIMARY KEY ("config", "dept_id");


--
-- Name: sys_dept_page sys_dept_page_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_dept_page"
    ADD CONSTRAINT "sys_dept_page_PKEY" PRIMARY KEY ("dept_id", "page");


--
-- Name: sys_domain sys_domain_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_domain"
    ADD CONSTRAINT "sys_domain_PKEY" PRIMARY KEY ("name");


--
-- Name: sys_email_token sys_email_token_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_email_token"
    ADD CONSTRAINT "sys_email_token_PKEY" PRIMARY KEY ("auth_token");


--
-- Name: sys_extend sys_extend_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_extend"
    ADD CONSTRAINT "sys_extend_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_extend_field sys_extend_field_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_extend_field"
    ADD CONSTRAINT "sys_extend_field_PKEY" PRIMARY KEY ("code", "extend_id");


--
-- Name: sys_module sys_module_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_module"
    ADD CONSTRAINT "sys_module_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_module_lang sys_module_lang_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_module_lang"
    ADD CONSTRAINT "sys_module_lang_PKEY" PRIMARY KEY ("lang", "module_id");


--
-- Name: sys_role sys_role_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_role"
    ADD CONSTRAINT "sys_role_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_role_authorized sys_role_authorized_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_role_authorized"
    ADD CONSTRAINT "sys_role_authorized_PKEY" PRIMARY KEY ("role_id", "url");


--
-- Name: sys_role_module sys_role_module_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_role_module"
    ADD CONSTRAINT "sys_role_module_PKEY" PRIMARY KEY ("module_id", "role_id");


--
-- Name: sys_role_user sys_role_user_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_role_user"
    ADD CONSTRAINT "sys_role_user_PKEY" PRIMARY KEY ("role_id", "user_id");


--
-- Name: sys_site sys_site_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_site"
    ADD CONSTRAINT "sys_site_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_task sys_task_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_task"
    ADD CONSTRAINT "sys_task_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_user sys_user_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_user"
    ADD CONSTRAINT "sys_user_PKEY" PRIMARY KEY ("id");


--
-- Name: sys_user_token sys_user_token_PKEY; Type: CONSTRAINT; Schema: PUBLIC; Owner: SYSTEM
--

ALTER TABLE ONLY "PUBLIC"."sys_user_token"
    ADD CONSTRAINT "sys_user_token_PKEY" PRIMARY KEY ("auth_token");


--
-- Name: app_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX app_id ON PUBLIC.sys_app_token USING BTREE (app_id);


--
-- Name: begintime; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX begintime ON PUBLIC.log_task USING BTREE (begintime);


--
-- Name: channel; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX channel ON PUBLIC.sys_user_token USING BTREE (channel);


--
-- Name: check_date; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX check_date ON PUBLIC.cms_content USING BTREE (check_date, update_date);


--
-- Name: clicks; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX clicks ON PUBLIC.cms_place USING BTREE (clicks);


--
-- Name: content_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX content_id ON PUBLIC.cms_content_file USING BTREE (content_id);


--
-- Name: create_date; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX create_date ON PUBLIC.sys_email_token USING BTREE (create_date);


--
-- Name: dept_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX dept_id ON PUBLIC.sys_user USING BTREE (dept_id);


--
-- Name: disabled; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX disabled ON PUBLIC.sys_site USING BTREE (disabled);


--
-- Name: email; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX email ON PUBLIC.sys_user USING BTREE (email);


--
-- Name: email_checked; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX email_checked ON PUBLIC.sys_user USING BTREE (email_checked);


--
-- Name: file_size; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX file_size ON PUBLIC.log_upload USING BTREE (file_size);


--
-- Name: file_type; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX file_type ON PUBLIC.log_upload USING BTREE (file_type);


--
-- Name: hidden; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX hidden ON PUBLIC.cms_word USING BTREE (hidden);


--
-- Name: ip; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX ip ON PUBLIC.log_operate USING BTREE (ip);


--
-- Name: item_type; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX item_type ON PUBLIC.cms_place USING BTREE (item_type, item_id);


--
-- Name: lastLoginDate; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX lastLoginDate ON PUBLIC.sys_user USING BTREE (last_login_date);


--
-- Name: only_url; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX only_url ON PUBLIC.cms_content USING BTREE (only_url, has_images, has_files, user_id);


--
-- Name: operate; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX operate ON PUBLIC.log_operate USING BTREE (operate);


--
-- Name: parent_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX parent_id ON PUBLIC.sys_module USING BTREE (parent_id, menu);


--
-- Name: publish_date; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX publish_date ON PUBLIC.cms_place USING BTREE (publish_date, create_date, expiry_date);


--
-- Name: quote_content_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX quote_content_id ON PUBLIC.cms_content USING BTREE (site_id, quote_content_id);


--
-- Name: reply_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX reply_id ON PUBLIC.cms_comment USING BTREE (site_id, reply_user_id, reply_id);


--
-- Name: result; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX result ON PUBLIC.log_login USING BTREE (result);


--
-- Name: scores; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX scores ON PUBLIC.cms_content USING BTREE (scores, comments, clicks);


--
-- Name: search_count; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX search_count ON PUBLIC.cms_word USING BTREE (search_count);


--
-- Name: sort; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX sort ON PUBLIC.sys_extend_field USING BTREE (sort);


--
-- Name: status; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX status ON PUBLIC.sys_task USING BTREE (status);


--
-- Name: success; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX success ON PUBLIC.log_task USING BTREE (success);


--
-- Name: task_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX task_id ON PUBLIC.log_task USING BTREE (task_id);


--
-- Name: type_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX type_id ON PUBLIC.cms_category USING BTREE (type_id, allow_contribute);


--
-- Name: update_date; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX update_date ON PUBLIC.sys_task USING BTREE (update_date);


--
-- Name: user_id; Type: INDEX; Schema: PUBLIC; Owner: SYSTEM
--

CREATE INDEX user_id ON PUBLIC.cms_content_related USING BTREE (content_id, related_content_id, user_id, clicks, sort);


--
-- Kingbase database dump complete
--

