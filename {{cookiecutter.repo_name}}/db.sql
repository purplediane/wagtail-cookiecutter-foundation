--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO puri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO puri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO puri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO puri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO puri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO puri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO puri;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO puri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO puri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO puri;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO puri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO puri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blogindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE blog_blogindexpage OWNER TO puri;

--
-- Name: blog_blogindexpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogindexpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE blog_blogindexpagerelatedlink OWNER TO puri;

--
-- Name: blog_blogindexpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE blog_blogindexpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogindexpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: blog_blogindexpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE blog_blogindexpagerelatedlink_id_seq OWNED BY blog_blogindexpagerelatedlink.id;


--
-- Name: blog_blogpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL,
    body text NOT NULL,
    date date NOT NULL,
    feed_image_id integer
);


ALTER TABLE blog_blogpage OWNER TO puri;

--
-- Name: blog_blogpagecarouselitem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogpagecarouselitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    embed_url character varying(200) NOT NULL,
    caption text NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE blog_blogpagecarouselitem OWNER TO puri;

--
-- Name: blog_blogpagecarouselitem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE blog_blogpagecarouselitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpagecarouselitem_id_seq OWNER TO puri;

--
-- Name: blog_blogpagecarouselitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE blog_blogpagecarouselitem_id_seq OWNED BY blog_blogpagecarouselitem.id;


--
-- Name: blog_blogpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE blog_blogpagerelatedlink OWNER TO puri;

--
-- Name: blog_blogpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE blog_blogpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: blog_blogpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE blog_blogpagerelatedlink_id_seq OWNED BY blog_blogpagerelatedlink.id;


--
-- Name: blog_blogpagetag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE blog_blogpagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE blog_blogpagetag OWNER TO puri;

--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE blog_blogpagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpagetag_id_seq OWNER TO puri;

--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE blog_blogpagetag_id_seq OWNED BY blog_blogpagetag.id;


--
-- Name: contact_contactformfield; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE contact_contactformfield (
    id integer NOT NULL,
    sort_order integer,
    label character varying(255) NOT NULL,
    field_type character varying(16) NOT NULL,
    required boolean NOT NULL,
    choices character varying(512) NOT NULL,
    default_value character varying(255) NOT NULL,
    help_text character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE contact_contactformfield OWNER TO puri;

--
-- Name: contact_contactformfield_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE contact_contactformfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contact_contactformfield_id_seq OWNER TO puri;

--
-- Name: contact_contactformfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE contact_contactformfield_id_seq OWNED BY contact_contactformfield.id;


--
-- Name: contact_contactpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE contact_contactpage (
    page_ptr_id integer NOT NULL,
    to_address character varying(255) NOT NULL,
    from_address character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    name_organization character varying(255) NOT NULL,
    telephone character varying(20) NOT NULL,
    email character varying(254) NOT NULL,
    address_1 character varying(255) NOT NULL,
    address_2 character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    post_code character varying(10) NOT NULL,
    intro character varying(255) NOT NULL,
    thank_you_text text NOT NULL
);


ALTER TABLE contact_contactpage OWNER TO puri;

--
-- Name: contact_formfield; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE contact_formfield (
    id integer NOT NULL,
    sort_order integer,
    label character varying(255) NOT NULL,
    field_type character varying(16) NOT NULL,
    required boolean NOT NULL,
    choices character varying(512) NOT NULL,
    default_value character varying(255) NOT NULL,
    help_text character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE contact_formfield OWNER TO puri;

--
-- Name: contact_formfield_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE contact_formfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contact_formfield_id_seq OWNER TO puri;

--
-- Name: contact_formfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE contact_formfield_id_seq OWNED BY contact_formfield.id;


--
-- Name: contact_formpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE contact_formpage (
    page_ptr_id integer NOT NULL,
    to_address character varying(255) NOT NULL,
    from_address character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    intro text NOT NULL,
    thank_you_text text NOT NULL
);


ALTER TABLE contact_formpage OWNER TO puri;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO puri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO puri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO puri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO puri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO puri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO puri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO puri;

--
-- Name: documents_gallery_documentsindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE documents_gallery_documentsindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL,
    feed_image_id integer
);


ALTER TABLE documents_gallery_documentsindexpage OWNER TO puri;

--
-- Name: documents_gallery_documentspage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE documents_gallery_documentspage (
    page_ptr_id integer NOT NULL,
    feed_image_id integer
);


ALTER TABLE documents_gallery_documentspage OWNER TO puri;

--
-- Name: documents_gallery_documentspagetag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE documents_gallery_documentspagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE documents_gallery_documentspagetag OWNER TO puri;

--
-- Name: documents_gallery_documentspagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE documents_gallery_documentspagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE documents_gallery_documentspagetag_id_seq OWNER TO puri;

--
-- Name: documents_gallery_documentspagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE documents_gallery_documentspagetag_id_seq OWNED BY documents_gallery_documentspagetag.id;


--
-- Name: events_eventindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE events_eventindexpage OWNER TO puri;

--
-- Name: events_eventindexpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventindexpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE events_eventindexpagerelatedlink OWNER TO puri;

--
-- Name: events_eventindexpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE events_eventindexpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_eventindexpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: events_eventindexpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE events_eventindexpagerelatedlink_id_seq OWNED BY events_eventindexpagerelatedlink.id;


--
-- Name: events_eventpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventpage (
    page_ptr_id integer NOT NULL,
    date_from date NOT NULL,
    date_to date,
    time_from time without time zone,
    time_to time without time zone,
    audience character varying(255),
    location character varying(255),
    body text NOT NULL,
    cost character varying(255),
    signup_link character varying(200) NOT NULL,
    feed_image_id integer
);


ALTER TABLE events_eventpage OWNER TO puri;

--
-- Name: events_eventpagecarouselitem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventpagecarouselitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    embed_url character varying(200) NOT NULL,
    caption text NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE events_eventpagecarouselitem OWNER TO puri;

--
-- Name: events_eventpagecarouselitem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE events_eventpagecarouselitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_eventpagecarouselitem_id_seq OWNER TO puri;

--
-- Name: events_eventpagecarouselitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE events_eventpagecarouselitem_id_seq OWNED BY events_eventpagecarouselitem.id;


--
-- Name: events_eventpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE events_eventpagerelatedlink OWNER TO puri;

--
-- Name: events_eventpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE events_eventpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_eventpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: events_eventpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE events_eventpagerelatedlink_id_seq OWNED BY events_eventpagerelatedlink.id;


--
-- Name: events_eventpagespeaker; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE events_eventpagespeaker (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    full_name character varying(255) NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE events_eventpagespeaker OWNER TO puri;

--
-- Name: events_eventpagespeaker_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE events_eventpagespeaker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_eventpagespeaker_id_seq OWNER TO puri;

--
-- Name: events_eventpagespeaker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE events_eventpagespeaker_id_seq OWNED BY events_eventpagespeaker.id;


--
-- Name: pages_advert; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_advert (
    id integer NOT NULL,
    link_external character varying(200) NOT NULL,
    title character varying(150),
    text text NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer
);


ALTER TABLE pages_advert OWNER TO puri;

--
-- Name: pages_advert_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_advert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_advert_id_seq OWNER TO puri;

--
-- Name: pages_advert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_advert_id_seq OWNED BY pages_advert.id;


--
-- Name: pages_contentblock; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_contentblock (
    id integer NOT NULL,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    summary text NOT NULL,
    slug character varying(50) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer
);


ALTER TABLE pages_contentblock OWNER TO puri;

--
-- Name: pages_contentblock_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_contentblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_contentblock_id_seq OWNER TO puri;

--
-- Name: pages_contentblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_contentblock_id_seq OWNED BY pages_contentblock.id;


--
-- Name: pages_faqspage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_faqspage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE pages_faqspage OWNER TO puri;

--
-- Name: pages_homepage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_homepage (
    page_ptr_id integer NOT NULL,
    title_text text,
    body text
);


ALTER TABLE pages_homepage OWNER TO puri;

--
-- Name: pages_homepagecarouselitem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_homepagecarouselitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    embed_url character varying(200) NOT NULL,
    caption text NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_homepagecarouselitem OWNER TO puri;

--
-- Name: pages_homepagecarouselitem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_homepagecarouselitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_homepagecarouselitem_id_seq OWNER TO puri;

--
-- Name: pages_homepagecarouselitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_homepagecarouselitem_id_seq OWNED BY pages_homepagecarouselitem.id;


--
-- Name: pages_homepagecontentitem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_homepagecontentitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(100) NOT NULL,
    content text,
    summary text NOT NULL,
    slug character varying(50) NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_homepagecontentitem OWNER TO puri;

--
-- Name: pages_homepagecontentitem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_homepagecontentitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_homepagecontentitem_id_seq OWNER TO puri;

--
-- Name: pages_homepagecontentitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_homepagecontentitem_id_seq OWNED BY pages_homepagecontentitem.id;


--
-- Name: pages_homepagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_homepagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_homepagerelatedlink OWNER TO puri;

--
-- Name: pages_homepagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_homepagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_homepagerelatedlink_id_seq OWNER TO puri;

--
-- Name: pages_homepagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_homepagerelatedlink_id_seq OWNED BY pages_homepagerelatedlink.id;


--
-- Name: pages_standardindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_standardindexpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    intro text NOT NULL,
    feed_image_id integer
);


ALTER TABLE pages_standardindexpage OWNER TO puri;

--
-- Name: pages_standardindexpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_standardindexpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_standardindexpagerelatedlink OWNER TO puri;

--
-- Name: pages_standardindexpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_standardindexpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_standardindexpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: pages_standardindexpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_standardindexpagerelatedlink_id_seq OWNED BY pages_standardindexpagerelatedlink.id;


--
-- Name: pages_standardpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_standardpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    intro text NOT NULL,
    body text NOT NULL,
    feed_image_id integer,
    template_string character varying(255) NOT NULL
);


ALTER TABLE pages_standardpage OWNER TO puri;

--
-- Name: pages_standardpagecarouselitem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_standardpagecarouselitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    embed_url character varying(200) NOT NULL,
    caption text NOT NULL,
    image_id integer,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_standardpagecarouselitem OWNER TO puri;

--
-- Name: pages_standardpagecarouselitem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_standardpagecarouselitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_standardpagecarouselitem_id_seq OWNER TO puri;

--
-- Name: pages_standardpagecarouselitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_standardpagecarouselitem_id_seq OWNED BY pages_standardpagecarouselitem.id;


--
-- Name: pages_standardpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_standardpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE pages_standardpagerelatedlink OWNER TO puri;

--
-- Name: pages_standardpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_standardpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_standardpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: pages_standardpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_standardpagerelatedlink_id_seq OWNED BY pages_standardpagerelatedlink.id;


--
-- Name: pages_testimonial; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE pages_testimonial (
    id integer NOT NULL,
    link_external character varying(200) NOT NULL,
    name character varying(150) NOT NULL,
    text character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer,
    photo_id integer
);


ALTER TABLE pages_testimonial OWNER TO puri;

--
-- Name: pages_testimonial_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE pages_testimonial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_testimonial_id_seq OWNER TO puri;

--
-- Name: pages_testimonial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE pages_testimonial_id_seq OWNED BY pages_testimonial.id;


--
-- Name: people_personindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personindexpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    intro text NOT NULL
);


ALTER TABLE people_personindexpage OWNER TO puri;

--
-- Name: people_personindexpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personindexpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE people_personindexpagerelatedlink OWNER TO puri;

--
-- Name: people_personindexpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE people_personindexpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE people_personindexpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: people_personindexpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE people_personindexpagerelatedlink_id_seq OWNED BY people_personindexpagerelatedlink.id;


--
-- Name: people_personpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personpage (
    page_ptr_id integer NOT NULL,
    name_organization character varying(255) NOT NULL,
    telephone character varying(20) NOT NULL,
    email character varying(254) NOT NULL,
    address_1 character varying(255) NOT NULL,
    address_2 character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    post_code character varying(10) NOT NULL,
    intro text NOT NULL,
    biography text NOT NULL,
    feed_image_id integer,
    image_id integer,
    role_id integer
);


ALTER TABLE people_personpage OWNER TO puri;

--
-- Name: people_personpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE people_personpagerelatedlink OWNER TO puri;

--
-- Name: people_personpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE people_personpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE people_personpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: people_personpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE people_personpagerelatedlink_id_seq OWNED BY people_personpagerelatedlink.id;


--
-- Name: people_personpagetag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personpagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE people_personpagetag OWNER TO puri;

--
-- Name: people_personpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE people_personpagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE people_personpagetag_id_seq OWNER TO puri;

--
-- Name: people_personpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE people_personpagetag_id_seq OWNED BY people_personpagetag.id;


--
-- Name: people_personrole; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE people_personrole (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE people_personrole OWNER TO puri;

--
-- Name: people_personrole_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE people_personrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE people_personrole_id_seq OWNER TO puri;

--
-- Name: people_personrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE people_personrole_id_seq OWNED BY people_personrole.id;


--
-- Name: photo_gallery_galleryindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE photo_gallery_galleryindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL,
    feed_image_id integer
);


ALTER TABLE photo_gallery_galleryindexpage OWNER TO puri;

--
-- Name: photo_gallery_gallerypage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE photo_gallery_gallerypage (
    page_ptr_id integer NOT NULL,
    feed_image_id integer
);


ALTER TABLE photo_gallery_gallerypage OWNER TO puri;

--
-- Name: photo_gallery_gallerypagetag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE photo_gallery_gallerypagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE photo_gallery_gallerypagetag OWNER TO puri;

--
-- Name: photo_gallery_gallerypagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE photo_gallery_gallerypagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photo_gallery_gallerypagetag_id_seq OWNER TO puri;

--
-- Name: photo_gallery_gallerypagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE photo_gallery_gallerypagetag_id_seq OWNED BY photo_gallery_gallerypagetag.id;


--
-- Name: products_productindexpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE products_productindexpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    intro text NOT NULL
);


ALTER TABLE products_productindexpage OWNER TO puri;

--
-- Name: products_productindexpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE products_productindexpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE products_productindexpagerelatedlink OWNER TO puri;

--
-- Name: products_productindexpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE products_productindexpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_productindexpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: products_productindexpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE products_productindexpagerelatedlink_id_seq OWNED BY products_productindexpagerelatedlink.id;


--
-- Name: products_productpage; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE products_productpage (
    page_ptr_id integer NOT NULL,
    price character varying(255) NOT NULL,
    description text NOT NULL,
    feed_image_id integer,
    image_id integer
);


ALTER TABLE products_productpage OWNER TO puri;

--
-- Name: products_productpagerelatedlink; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE products_productpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE products_productpagerelatedlink OWNER TO puri;

--
-- Name: products_productpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE products_productpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_productpagerelatedlink_id_seq OWNER TO puri;

--
-- Name: products_productpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE products_productpagerelatedlink_id_seq OWNED BY products_productpagerelatedlink.id;


--
-- Name: products_productpagetag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE products_productpagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE products_productpagetag OWNER TO puri;

--
-- Name: products_productpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE products_productpagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_productpagetag_id_seq OWNER TO puri;

--
-- Name: products_productpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE products_productpagetag_id_seq OWNED BY products_productpagetag.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE taggit_tag OWNER TO puri;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_tag_id_seq OWNER TO puri;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE taggit_taggeditem OWNER TO puri;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_taggeditem_id_seq OWNER TO puri;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_collection OWNER TO puri;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_collection_id_seq OWNER TO puri;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_collection_id_seq OWNED BY wagtailcore_collection.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE wagtailcore_groupcollectionpermission OWNER TO puri;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_groupcollectionpermission_id_seq OWNER TO puri;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_groupcollectionpermission_id_seq OWNED BY wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailcore_grouppagepermission OWNER TO puri;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_grouppagepermission_id_seq OWNER TO puri;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_grouppagepermission_id_seq OWNED BY wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_page OWNER TO puri;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_page_id_seq OWNER TO puri;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_page_id_seq OWNED BY wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE wagtailcore_pagerevision OWNER TO puri;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pagerevision_id_seq OWNER TO puri;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_pagerevision_id_seq OWNED BY wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailcore_pageviewrestriction OWNER TO puri;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pageviewrestriction_id_seq OWNER TO puri;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_id_seq OWNED BY wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE wagtailcore_site OWNER TO puri;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_site_id_seq OWNER TO puri;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailcore_site_id_seq OWNED BY wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL
);


ALTER TABLE wagtaildocs_document OWNER TO puri;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtaildocs_document_id_seq OWNER TO puri;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtaildocs_document_id_seq OWNED BY wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE wagtailembeds_embed OWNER TO puri;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailembeds_embed_id_seq OWNER TO puri;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailembeds_embed_id_seq OWNED BY wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailforms_formsubmission OWNER TO puri;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailforms_formsubmission_id_seq OWNER TO puri;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailforms_formsubmission_id_seq OWNED BY wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_filter; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailimages_filter (
    id integer NOT NULL,
    spec character varying(255) NOT NULL
);


ALTER TABLE wagtailimages_filter OWNER TO puri;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailimages_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_filter_id_seq OWNER TO puri;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailimages_filter_id_seq OWNED BY wagtailimages_filter.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE wagtailimages_image OWNER TO puri;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_image_id_seq OWNER TO puri;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailimages_image_id_seq OWNED BY wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(255) NOT NULL,
    filter_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE wagtailimages_rendition OWNER TO puri;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_rendition_id_seq OWNER TO puri;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailimages_rendition_id_seq OWNED BY wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(200) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE wagtailredirects_redirect OWNER TO puri;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailredirects_redirect_id_seq OWNER TO puri;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailredirects_redirect_id_seq OWNED BY wagtailredirects_redirect.id;


--
-- Name: wagtailsearchpromotions_searchpromotion; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailsearchpromotions_searchpromotion (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearchpromotions_searchpromotion OWNER TO puri;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_editorspick_id_seq OWNER TO puri;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailsearch_editorspick_id_seq OWNED BY wagtailsearchpromotions_searchpromotion.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE wagtailsearch_query OWNER TO puri;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_query_id_seq OWNER TO puri;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailsearch_query_id_seq OWNED BY wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearch_querydailyhits OWNER TO puri;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_querydailyhits_id_seq OWNER TO puri;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailsearch_querydailyhits_id_seq OWNED BY wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: puri; Tablespace: 
--

CREATE TABLE wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE wagtailusers_userprofile OWNER TO puri;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: puri
--

CREATE SEQUENCE wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailusers_userprofile_id_seq OWNER TO puri;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: puri
--

ALTER SEQUENCE wagtailusers_userprofile_id_seq OWNED BY wagtailusers_userprofile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogindexpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('blog_blogindexpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagecarouselitem ALTER COLUMN id SET DEFAULT nextval('blog_blogpagecarouselitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('blog_blogpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagetag ALTER COLUMN id SET DEFAULT nextval('blog_blogpagetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_contactformfield ALTER COLUMN id SET DEFAULT nextval('contact_contactformfield_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_formfield ALTER COLUMN id SET DEFAULT nextval('contact_formfield_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentspagetag ALTER COLUMN id SET DEFAULT nextval('documents_gallery_documentspagetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventindexpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('events_eventindexpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagecarouselitem ALTER COLUMN id SET DEFAULT nextval('events_eventpagecarouselitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('events_eventpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagespeaker ALTER COLUMN id SET DEFAULT nextval('events_eventpagespeaker_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_advert ALTER COLUMN id SET DEFAULT nextval('pages_advert_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_contentblock ALTER COLUMN id SET DEFAULT nextval('pages_contentblock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecarouselitem ALTER COLUMN id SET DEFAULT nextval('pages_homepagecarouselitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecontentitem ALTER COLUMN id SET DEFAULT nextval('pages_homepagecontentitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagerelatedlink ALTER COLUMN id SET DEFAULT nextval('pages_homepagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('pages_standardindexpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagecarouselitem ALTER COLUMN id SET DEFAULT nextval('pages_standardpagecarouselitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('pages_standardpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_testimonial ALTER COLUMN id SET DEFAULT nextval('pages_testimonial_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personindexpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('people_personindexpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('people_personpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagetag ALTER COLUMN id SET DEFAULT nextval('people_personpagetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personrole ALTER COLUMN id SET DEFAULT nextval('people_personrole_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_gallerypagetag ALTER COLUMN id SET DEFAULT nextval('photo_gallery_gallerypagetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productindexpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('products_productindexpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('products_productpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagetag ALTER COLUMN id SET DEFAULT nextval('products_productpagetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collection_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('wagtailcore_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('wagtailcore_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('wagtaildocs_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('wagtailembeds_embed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_filter ALTER COLUMN id SET DEFAULT nextval('wagtailimages_filter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('wagtailimages_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('wagtailimages_rendition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearchpromotions_searchpromotion ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	1	5
9	1	6
10	2	4
11	2	5
12	2	6
13	1	7
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can add document	3	add_document
5	Can change document	3	change_document
6	Can delete document	3	delete_document
7	Can access Wagtail admin	5	access_admin
8	Can add log entry	6	add_logentry
9	Can change log entry	6	change_logentry
10	Can delete log entry	6	delete_logentry
11	Can add permission	7	add_permission
12	Can change permission	7	change_permission
13	Can delete permission	7	delete_permission
14	Can add group	8	add_group
15	Can change group	8	change_group
16	Can delete group	8	delete_group
17	Can add user	9	add_user
18	Can change user	9	change_user
19	Can delete user	9	delete_user
20	Can add content type	10	add_contenttype
21	Can change content type	10	change_contenttype
22	Can delete content type	10	delete_contenttype
23	Can add session	11	add_session
24	Can change session	11	change_session
25	Can delete session	11	delete_session
26	Can add Tag	12	add_tag
27	Can change Tag	12	change_tag
28	Can delete Tag	12	delete_tag
29	Can add Tagged Item	13	add_taggeditem
30	Can change Tagged Item	13	change_taggeditem
31	Can delete Tagged Item	13	delete_taggeditem
32	Can add Search promotion	14	add_searchpromotion
33	Can change Search promotion	14	change_searchpromotion
34	Can delete Search promotion	14	delete_searchpromotion
35	Can add Form Submission	15	add_formsubmission
36	Can change Form Submission	15	change_formsubmission
37	Can delete Form Submission	15	delete_formsubmission
38	Can add Redirect	16	add_redirect
39	Can change Redirect	16	change_redirect
40	Can delete Redirect	16	delete_redirect
41	Can add Embed	17	add_embed
42	Can change Embed	17	change_embed
43	Can delete Embed	17	delete_embed
44	Can add User Profile	18	add_userprofile
45	Can change User Profile	18	change_userprofile
46	Can delete User Profile	18	delete_userprofile
47	Can add filter	19	add_filter
48	Can change filter	19	change_filter
49	Can delete filter	19	delete_filter
50	Can add rendition	20	add_rendition
51	Can change rendition	20	change_rendition
52	Can delete rendition	20	delete_rendition
53	Can add query	21	add_query
54	Can change query	21	change_query
55	Can delete query	21	delete_query
56	Can add Query Daily Hits	22	add_querydailyhits
57	Can change Query Daily Hits	22	change_querydailyhits
58	Can delete Query Daily Hits	22	delete_querydailyhits
59	Can add site	23	add_site
60	Can change site	23	change_site
61	Can delete site	23	delete_site
62	Can add page	1	add_page
63	Can change page	1	change_page
64	Can delete page	1	delete_page
65	Can add page revision	24	add_pagerevision
66	Can change page revision	24	change_pagerevision
67	Can delete page revision	24	delete_pagerevision
68	Can add group page permission	25	add_grouppagepermission
69	Can change group page permission	25	change_grouppagepermission
70	Can delete group page permission	25	delete_grouppagepermission
71	Can add page view restriction	26	add_pageviewrestriction
72	Can change page view restriction	26	change_pageviewrestriction
73	Can delete page view restriction	26	delete_pageviewrestriction
74	Can add home page content item	27	add_homepagecontentitem
75	Can change home page content item	27	change_homepagecontentitem
76	Can delete home page content item	27	delete_homepagecontentitem
77	Can add home page carousel item	28	add_homepagecarouselitem
78	Can change home page carousel item	28	change_homepagecarouselitem
79	Can delete home page carousel item	28	delete_homepagecarouselitem
80	Can add home page related link	29	add_homepagerelatedlink
81	Can change home page related link	29	change_homepagerelatedlink
82	Can delete home page related link	29	delete_homepagerelatedlink
83	Can add Homepage	4	add_homepage
84	Can change Homepage	4	change_homepage
85	Can delete Homepage	4	delete_homepage
86	Can add standard index page related link	30	add_standardindexpagerelatedlink
87	Can change standard index page related link	30	change_standardindexpagerelatedlink
88	Can delete standard index page related link	30	delete_standardindexpagerelatedlink
89	Can add standard index page	31	add_standardindexpage
90	Can change standard index page	31	change_standardindexpage
91	Can delete standard index page	31	delete_standardindexpage
92	Can add standard page carousel item	32	add_standardpagecarouselitem
93	Can change standard page carousel item	32	change_standardpagecarouselitem
94	Can delete standard page carousel item	32	delete_standardpagecarouselitem
95	Can add standard page related link	33	add_standardpagerelatedlink
96	Can change standard page related link	33	change_standardpagerelatedlink
97	Can delete standard page related link	33	delete_standardpagerelatedlink
98	Can add standard page	34	add_standardpage
99	Can change standard page	34	change_standardpage
100	Can delete standard page	34	delete_standardpage
101	Can add content block	35	add_contentblock
102	Can change content block	35	change_contentblock
103	Can delete content block	35	delete_contentblock
104	Can add testimonial	36	add_testimonial
105	Can change testimonial	36	change_testimonial
106	Can delete testimonial	36	delete_testimonial
107	Can add advert	37	add_advert
108	Can change advert	37	change_advert
109	Can delete advert	37	delete_advert
110	Can add faqs page	38	add_faqspage
111	Can change faqs page	38	change_faqspage
112	Can delete faqs page	38	delete_faqspage
113	Can add blog index page related link	39	add_blogindexpagerelatedlink
114	Can change blog index page related link	39	change_blogindexpagerelatedlink
115	Can delete blog index page related link	39	delete_blogindexpagerelatedlink
116	Can add blog index page	40	add_blogindexpage
117	Can change blog index page	40	change_blogindexpage
118	Can delete blog index page	40	delete_blogindexpage
119	Can add blog page carousel item	41	add_blogpagecarouselitem
120	Can change blog page carousel item	41	change_blogpagecarouselitem
121	Can delete blog page carousel item	41	delete_blogpagecarouselitem
122	Can add blog page related link	42	add_blogpagerelatedlink
123	Can change blog page related link	42	change_blogpagerelatedlink
124	Can delete blog page related link	42	delete_blogpagerelatedlink
125	Can add blog page tag	43	add_blogpagetag
126	Can change blog page tag	43	change_blogpagetag
127	Can delete blog page tag	43	delete_blogpagetag
128	Can add blog page	44	add_blogpage
129	Can change blog page	44	change_blogpage
130	Can delete blog page	44	delete_blogpage
131	Can add event index page related link	45	add_eventindexpagerelatedlink
132	Can change event index page related link	45	change_eventindexpagerelatedlink
133	Can delete event index page related link	45	delete_eventindexpagerelatedlink
134	Can add event index page	46	add_eventindexpage
135	Can change event index page	46	change_eventindexpage
136	Can delete event index page	46	delete_eventindexpage
137	Can add event page carousel item	47	add_eventpagecarouselitem
138	Can change event page carousel item	47	change_eventpagecarouselitem
139	Can delete event page carousel item	47	delete_eventpagecarouselitem
140	Can add event page related link	48	add_eventpagerelatedlink
141	Can change event page related link	48	change_eventpagerelatedlink
142	Can delete event page related link	48	delete_eventpagerelatedlink
143	Can add event page speaker	49	add_eventpagespeaker
144	Can change event page speaker	49	change_eventpagespeaker
145	Can delete event page speaker	49	delete_eventpagespeaker
146	Can add event page	50	add_eventpage
147	Can change event page	50	change_eventpage
148	Can delete event page	50	delete_eventpage
149	Can add form field	51	add_formfield
150	Can change form field	51	change_formfield
151	Can delete form field	51	delete_formfield
152	Can add form page	52	add_formpage
153	Can change form page	52	change_formpage
154	Can delete form page	52	delete_formpage
155	Can add contact form field	53	add_contactformfield
156	Can change contact form field	53	change_contactformfield
157	Can delete contact form field	53	delete_contactformfield
158	Can add contact page	54	add_contactpage
159	Can change contact page	54	change_contactpage
160	Can delete contact page	54	delete_contactpage
161	Can add person index page related link	55	add_personindexpagerelatedlink
162	Can change person index page related link	55	change_personindexpagerelatedlink
163	Can delete person index page related link	55	delete_personindexpagerelatedlink
164	Can add person index page	56	add_personindexpage
165	Can change person index page	56	change_personindexpage
166	Can delete person index page	56	delete_personindexpage
167	Can add person page related link	57	add_personpagerelatedlink
168	Can change person page related link	57	change_personpagerelatedlink
169	Can delete person page related link	57	delete_personpagerelatedlink
170	Can add person page tag	58	add_personpagetag
171	Can change person page tag	58	change_personpagetag
172	Can delete person page tag	58	delete_personpagetag
173	Can add person role	59	add_personrole
174	Can change person role	59	change_personrole
175	Can delete person role	59	delete_personrole
176	Can add person page	60	add_personpage
177	Can change person page	60	change_personpage
178	Can delete person page	60	delete_personpage
179	Can add Gallery Index Page	61	add_galleryindexpage
180	Can change Gallery Index Page	61	change_galleryindexpage
181	Can delete Gallery Index Page	61	delete_galleryindexpage
182	Can add gallery page tag	62	add_gallerypagetag
183	Can change gallery page tag	62	change_gallerypagetag
184	Can delete gallery page tag	62	delete_gallerypagetag
185	Can add Gallery Page	63	add_gallerypage
186	Can change Gallery Page	63	change_gallerypage
187	Can delete Gallery Page	63	delete_gallerypage
188	Can add product index page related link	64	add_productindexpagerelatedlink
189	Can change product index page related link	64	change_productindexpagerelatedlink
190	Can delete product index page related link	64	delete_productindexpagerelatedlink
191	Can add product index page	65	add_productindexpage
192	Can change product index page	65	change_productindexpage
193	Can delete product index page	65	delete_productindexpage
194	Can add product page related link	66	add_productpagerelatedlink
195	Can change product page related link	66	change_productpagerelatedlink
196	Can delete product page related link	66	delete_productpagerelatedlink
197	Can add product page tag	67	add_productpagetag
198	Can change product page tag	67	change_productpagetag
199	Can delete product page tag	67	delete_productpagetag
200	Can add product page	68	add_productpage
201	Can change product page	68	change_productpage
202	Can delete product page	68	delete_productpage
203	Can add Documents Index Page	69	add_documentsindexpage
204	Can change Documents Index Page	69	change_documentsindexpage
205	Can delete Documents Index Page	69	delete_documentsindexpage
206	Can add documents page tag	70	add_documentspagetag
207	Can change documents page tag	70	change_documentspagetag
208	Can delete documents page tag	70	delete_documentspagetag
209	Can add Documents Page	71	add_documentspage
210	Can change Documents Page	71	change_documentspage
211	Can delete Documents Page	71	delete_documentspage
212	Can add collection	72	add_collection
213	Can change collection	72	change_collection
214	Can delete collection	72	delete_collection
215	Can add group collection permission	73	add_groupcollectionpermission
216	Can change group collection permission	73	change_groupcollectionpermission
217	Can delete group collection permission	73	delete_groupcollectionpermission
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_permission_id_seq', 211, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$0Z0gCg9bV8Ww$4/CjGtpPvZ4SXDEExu2klECWPQKZTF3lwRxV/2WTLK0=	2016-04-26 17:38:57.756609+05:30	t	admin				t	t	2015-11-25 16:16:36.839+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_blogindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogindexpage (page_ptr_id, intro) FROM stdin;
10	
\.


--
-- Data for Name: blog_blogindexpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogindexpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: blog_blogindexpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('blog_blogindexpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: blog_blogpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogpage (page_ptr_id, intro, body, date, feed_image_id) FROM stdin;
11	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat.</p>	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p><p><br/></p><p>Fusce et diam quis ipsum pulvinar euismod sit amet ac libero. Proin mauris ligula, egestas at tempus non, tempor et dolor. Proin porttitor, nibh quis consequat posuere, dolor eros eleifend nisi, ac semper ex nulla sit amet urna. Ut venenatis eros nec gravida molestie. Integer hendrerit mollis odio vitae porttitor. Sed ut elementum magna. Morbi laoreet odio lorem, eu fringilla nulla venenatis id. Duis nisl erat, aliquet in tortor eget, ullamcorper varius quam. Sed venenatis posuere ipsum, ut maximus ligula tristique fermentum. Ut eget porttitor quam. In varius diam quis viverra porttitor.</p><p><br/></p><p>In leo purus, efficitur ut eleifend lacinia, pharetra et metus. Nullam enim sapien, vehicula vel purus id, vehicula pretium turpis. Maecenas mattis nulla convallis leo sodales vulputate. In nunc nunc, pretium ut turpis in, tempor varius ligula. Vestibulum facilisis enim ac sagittis vestibulum. Phasellus eros lectus, posuere nec malesuada efficitur, dictum sit amet magna. Phasellus varius dui ac nisi pretium dignissim. Etiam elementum lacus urna, in tincidunt sem pellentesque vitae. Etiam porta purus id porta dictum. Curabitur tristique iaculis turpis, eget mollis mauris commodo at. Nullam dignissim, tellus sed porttitor volutpat, ex lectus facilisis ante, at egestas tortor tellus sit amet massa. Cras pellentesque venenatis est sed molestie. Donec sollicitudin erat ac rhoncus egestas. Pellentesque condimentum non elit suscipit commodo. Suspendisse a felis ac leo egestas venenatis.</p>	2015-11-20	9
\.


--
-- Data for Name: blog_blogpagecarouselitem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogpagecarouselitem (id, sort_order, link_external, embed_url, caption, image_id, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: blog_blogpagecarouselitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('blog_blogpagecarouselitem_id_seq', 1, false);


--
-- Data for Name: blog_blogpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: blog_blogpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('blog_blogpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: blog_blogpagetag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY blog_blogpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('blog_blogpagetag_id_seq', 1, false);


--
-- Data for Name: contact_contactformfield; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY contact_contactformfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
1	0	Name	singleline	t				12
2	1	e-mail	email	t				12
3	2	Message	multiline	t				12
\.


--
-- Name: contact_contactformfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('contact_contactformfield_id_seq', 3, true);


--
-- Data for Name: contact_contactpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY contact_contactpage (page_ptr_id, to_address, from_address, subject, name_organization, telephone, email, address_1, address_2, city, country, post_code, intro, thank_you_text) FROM stdin;
12													<p>Thanks for your interest</p>
\.


--
-- Data for Name: contact_formfield; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY contact_formfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
\.


--
-- Name: contact_formfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('contact_formfield_id_seq', 1, false);


--
-- Data for Name: contact_formpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY contact_formpage (page_ptr_id, to_address, from_address, subject, intro, thank_you_text) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	wagtaildocs	document
4	pages	homepage
5	wagtailadmin	admin
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	taggit	tag
13	taggit	taggeditem
14	wagtailsearchpromotions	searchpromotion
15	wagtailforms	formsubmission
16	wagtailredirects	redirect
17	wagtailembeds	embed
18	wagtailusers	userprofile
19	wagtailimages	filter
20	wagtailimages	rendition
21	wagtailsearch	query
22	wagtailsearch	querydailyhits
23	wagtailcore	site
24	wagtailcore	pagerevision
25	wagtailcore	grouppagepermission
26	wagtailcore	pageviewrestriction
27	pages	homepagecontentitem
28	pages	homepagecarouselitem
29	pages	homepagerelatedlink
30	pages	standardindexpagerelatedlink
31	pages	standardindexpage
32	pages	standardpagecarouselitem
33	pages	standardpagerelatedlink
34	pages	standardpage
35	pages	contentblock
36	pages	testimonial
37	pages	advert
38	pages	faqspage
39	blog	blogindexpagerelatedlink
40	blog	blogindexpage
41	blog	blogpagecarouselitem
42	blog	blogpagerelatedlink
43	blog	blogpagetag
44	blog	blogpage
45	events	eventindexpagerelatedlink
46	events	eventindexpage
47	events	eventpagecarouselitem
48	events	eventpagerelatedlink
49	events	eventpagespeaker
50	events	eventpage
51	contact	formfield
52	contact	formpage
53	contact	contactformfield
54	contact	contactpage
55	people	personindexpagerelatedlink
56	people	personindexpage
57	people	personpagerelatedlink
58	people	personpagetag
59	people	personrole
60	people	personpage
61	photo_gallery	galleryindexpage
62	photo_gallery	gallerypagetag
63	photo_gallery	gallerypage
64	products	productindexpagerelatedlink
65	products	productindexpage
66	products	productpagerelatedlink
67	products	productpagetag
68	products	productpage
69	documents_gallery	documentsindexpage
70	documents_gallery	documentspagetag
71	documents_gallery	documentspage
72	wagtailcore	collection
73	wagtailcore	groupcollectionpermission
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('django_content_type_id_seq', 71, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-04-25 18:57:16.731708+05:30
2	auth	0001_initial	2016-04-25 18:57:17.711984+05:30
3	admin	0001_initial	2016-04-25 18:57:17.911626+05:30
4	admin	0002_logentry_remove_auto_add	2016-04-25 18:57:17.95565+05:30
5	contenttypes	0002_remove_content_type_name	2016-04-25 18:57:18.033288+05:30
6	auth	0002_alter_permission_name_max_length	2016-04-25 18:57:18.066528+05:30
7	auth	0003_alter_user_email_max_length	2016-04-25 18:57:18.110968+05:30
8	auth	0004_alter_user_username_opts	2016-04-25 18:57:18.147339+05:30
9	auth	0005_alter_user_last_login_null	2016-04-25 18:57:18.189053+05:30
10	auth	0006_require_contenttypes_0002	2016-04-25 18:57:18.200186+05:30
11	auth	0007_alter_validators_add_error_messages	2016-04-25 18:57:18.232417+05:30
12	taggit	0001_initial	2016-04-25 18:57:18.711941+05:30
13	taggit	0002_auto_20150616_2121	2016-04-25 18:57:18.800126+05:30
14	wagtailimages	0001_initial	2016-04-25 18:57:19.32441+05:30
15	wagtailcore	0001_initial	2016-04-25 18:57:20.992403+05:30
16	wagtailcore	0002_initial_data	2016-04-25 18:57:21.002564+05:30
17	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2016-04-25 18:57:21.013572+05:30
18	wagtailcore	0004_page_locked	2016-04-25 18:57:21.024714+05:30
19	wagtailcore	0005_add_page_lock_permission_to_moderators	2016-04-25 18:57:21.035757+05:30
20	wagtailcore	0006_add_lock_page_permission	2016-04-25 18:57:21.047172+05:30
21	wagtailcore	0007_page_latest_revision_created_at	2016-04-25 18:57:21.058388+05:30
22	wagtailcore	0008_populate_latest_revision_created_at	2016-04-25 18:57:21.069375+05:30
23	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2016-04-25 18:57:21.080362+05:30
24	wagtailcore	0010_change_page_owner_to_null_on_delete	2016-04-25 18:57:21.091589+05:30
25	wagtailcore	0011_page_first_published_at	2016-04-25 18:57:21.102513+05:30
26	wagtailcore	0012_extend_page_slug_field	2016-04-25 18:57:21.113723+05:30
27	wagtailcore	0013_update_golive_expire_help_text	2016-04-25 18:57:21.124988+05:30
28	wagtailcore	0014_add_verbose_name	2016-04-25 18:57:21.136064+05:30
29	wagtailcore	0015_add_more_verbose_names	2016-04-25 18:57:21.147068+05:30
30	wagtailcore	0016_change_page_url_path_to_text_field	2016-04-25 18:57:21.158121+05:30
31	wagtailimages	0002_initial_data	2016-04-25 18:57:21.225235+05:30
32	wagtailimages	0003_fix_focal_point_fields	2016-04-25 18:57:21.368048+05:30
33	wagtailimages	0004_make_focal_point_key_not_nullable	2016-04-25 18:57:21.424401+05:30
34	wagtailimages	0005_make_filter_spec_unique	2016-04-25 18:57:21.537262+05:30
35	wagtailimages	0006_add_verbose_names	2016-04-25 18:57:21.781608+05:30
36	wagtaildocs	0001_initial	2016-04-25 18:57:21.959292+05:30
37	wagtaildocs	0002_initial_data	2016-04-25 18:57:22.014358+05:30
38	wagtaildocs	0003_add_verbose_names	2016-04-25 18:57:22.159011+05:30
39	blog	0001_initial	2016-04-25 18:57:23.674242+05:30
40	blog	0002_auto_20151021_1630	2016-04-25 18:57:24.04585+05:30
41	contact	0001_initial	2016-04-25 18:57:24.874333+05:30
42	contact	0002_auto_20151229_1657	2016-04-25 18:57:25.734772+05:30
43	wagtailimages	0007_image_file_size	2016-04-25 18:57:25.80706+05:30
44	wagtailimages	0008_image_created_at_index	2016-04-25 18:57:25.929682+05:30
45	wagtailcore	0017_change_edit_page_permission_description	2016-04-25 18:57:26.10185+05:30
46	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2016-04-25 18:57:26.20753+05:30
47	wagtailcore	0019_verbose_names_cleanup	2016-04-25 18:57:26.483824+05:30
48	documents_gallery	0001_initial	2016-04-25 18:57:27.166641+05:30
49	events	0001_initial	2016-04-25 18:57:28.913011+05:30
50	events	0002_auto_20151014_1415	2016-04-25 18:57:29.155381+05:30
51	events	0003_auto_20151021_1630	2016-04-25 18:57:30.05707+05:30
52	pages	0001_initial	2016-04-25 18:57:34.606537+05:30
53	pages	0002_create_homepage	2016-04-25 18:57:34.737766+05:30
54	pages	0003_advert	2016-04-25 18:57:35.115703+05:30
55	pages	0004_auto_20151007_1926	2016-04-25 18:57:35.218436+05:30
56	pages	0005_auto_20151021_1630	2016-04-25 18:57:36.893431+05:30
57	pages	0006_standardpage_template_string	2016-04-25 18:57:37.206701+05:30
58	people	0001_initial	2016-04-25 18:57:39.219312+05:30
59	people	0002_auto_20151021_1630	2016-04-25 18:57:39.759943+05:30
60	photo_gallery	0001_initial	2016-04-25 18:57:40.908268+05:30
61	products	0001_initial	2016-04-25 18:57:42.955005+05:30
62	products	0002_auto_20151021_1630	2016-04-25 18:57:43.424237+05:30
63	sessions	0001_initial	2016-04-25 18:57:43.743186+05:30
64	wagtailadmin	0001_create_admin_access_permissions	2016-04-25 18:57:43.886813+05:30
65	wagtailcore	0020_add_index_on_page_first_published_at	2016-04-25 18:57:44.154617+05:30
66	wagtailcore	0021_capitalizeverbose	2016-04-25 18:57:48.464828+05:30
67	wagtailcore	0022_add_site_name	2016-04-25 18:57:48.654303+05:30
68	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2016-04-25 18:57:48.843353+05:30
69	wagtaildocs	0004_capitalizeverbose	2016-04-25 18:57:49.631474+05:30
70	wagtailembeds	0001_initial	2016-04-25 18:57:49.832978+05:30
71	wagtailembeds	0002_add_verbose_names	2016-04-25 18:57:49.869345+05:30
72	wagtailembeds	0003_capitalizeverbose	2016-04-25 18:57:49.894737+05:30
73	wagtailforms	0001_initial	2016-04-25 18:57:50.177466+05:30
74	wagtailforms	0002_add_verbose_names	2016-04-25 18:57:50.425315+05:30
75	wagtailforms	0003_capitalizeverbose	2016-04-25 18:57:50.776505+05:30
76	wagtailimages	0009_capitalizeverbose	2016-04-25 18:57:51.611171+05:30
77	wagtailimages	0010_change_on_delete_behaviour	2016-04-25 18:57:51.777054+05:30
78	wagtailredirects	0001_initial	2016-04-25 18:57:52.245021+05:30
79	wagtailredirects	0002_add_verbose_names	2016-04-25 18:57:52.666604+05:30
80	wagtailredirects	0003_make_site_field_editable	2016-04-25 18:57:52.845663+05:30
81	wagtailredirects	0004_set_unique_on_path_and_site	2016-04-25 18:57:53.233046+05:30
82	wagtailredirects	0005_capitalizeverbose	2016-04-25 18:57:54.133716+05:30
83	wagtailsearch	0001_initial	2016-04-25 18:57:55.069954+05:30
84	wagtailsearch	0002_add_verbose_names	2016-04-25 18:57:55.613787+05:30
85	wagtailsearch	0003_remove_editors_pick	2016-04-25 18:57:55.754852+05:30
86	wagtailsearchpromotions	0001_initial	2016-04-25 18:57:56.269028+05:30
87	wagtailsearchpromotions	0002_capitalizeverbose	2016-04-25 18:57:56.818221+05:30
88	wagtailusers	0001_initial	2016-04-25 18:57:57.081342+05:30
89	wagtailusers	0002_add_verbose_name_on_userprofile	2016-04-25 18:57:57.466819+05:30
90	wagtailusers	0003_add_verbose_names	2016-04-25 18:57:57.594024+05:30
91	wagtailusers	0004_capitalizeverbose	2016-04-25 18:57:58.173279+05:30
92	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2016-04-25 18:57:58.318694+05:30
93	wagtailcore	0024_collection	2016-04-25 19:12:28.533643+05:30
94	wagtailcore	0025_collection_initial_data	2016-04-25 19:12:28.566551+05:30
95	wagtailcore	0026_group_collection_permission	2016-04-25 19:12:29.290339+05:30
96	wagtailcore	0027_fix_collection_path_collation	2016-04-25 19:12:29.400628+05:30
97	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2016-04-25 19:12:29.666777+05:30
98	wagtailcore	0028_merge	2016-04-25 19:12:29.678473+05:30
99	wagtaildocs	0005_document_collection	2016-04-25 19:12:30.734675+05:30
100	wagtaildocs	0006_copy_document_permissions_to_collections	2016-04-25 19:12:30.77753+05:30
101	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2016-04-25 19:12:31.044979+05:30
102	wagtaildocs	0007_merge	2016-04-25 19:12:31.05605+05:30
103	wagtailimages	0011_image_collection	2016-04-25 19:12:33.313603+05:30
104	wagtailimages	0012_copy_image_permissions_to_collections	2016-04-25 19:12:33.355422+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('django_migrations_id_seq', 92, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
hqtndfw2nm3c1m8ls6vs43atr7yop3n8	NTMzZDc4MjE3MzYxZmY0OTRhOTg2OGRmMmYyYTdmODdkZjUyOTEwOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU1ODAxOGY5YWQ2NzZmZTVkN2JmMzRjNmU2NTM5ZDhiOWI4MTMzYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-05-10 17:38:57.813626+05:30
\.


--
-- Data for Name: documents_gallery_documentsindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY documents_gallery_documentsindexpage (page_ptr_id, intro, feed_image_id) FROM stdin;
6	<p>Welcome to documents gallery!</p>	\N
\.


--
-- Data for Name: documents_gallery_documentspage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY documents_gallery_documentspage (page_ptr_id, feed_image_id) FROM stdin;
7	\N
\.


--
-- Data for Name: documents_gallery_documentspagetag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY documents_gallery_documentspagetag (id, content_object_id, tag_id) FROM stdin;
1	7	1
2	7	2
\.


--
-- Name: documents_gallery_documentspagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('documents_gallery_documentspagetag_id_seq', 2, true);


--
-- Data for Name: events_eventindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventindexpage (page_ptr_id, intro) FROM stdin;
13	<p>Upcoming Events</p>
\.


--
-- Data for Name: events_eventindexpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventindexpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: events_eventindexpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('events_eventindexpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: events_eventpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventpage (page_ptr_id, date_from, date_to, time_from, time_to, audience, location, body, cost, signup_link, feed_image_id) FROM stdin;
14	2015-12-23	\N	17:00:00	18:00:00	public	ChrisDev Headquarters				\N
\.


--
-- Data for Name: events_eventpagecarouselitem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventpagecarouselitem (id, sort_order, link_external, embed_url, caption, image_id, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: events_eventpagecarouselitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('events_eventpagecarouselitem_id_seq', 1, false);


--
-- Data for Name: events_eventpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: events_eventpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('events_eventpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: events_eventpagespeaker; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY events_eventpagespeaker (id, sort_order, link_external, full_name, image_id, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: events_eventpagespeaker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('events_eventpagespeaker_id_seq', 1, false);


--
-- Data for Name: pages_advert; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_advert (id, link_external, title, text, image_id, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_advert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_advert_id_seq', 1, false);


--
-- Data for Name: pages_contentblock; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_contentblock (id, link_external, title, body, summary, slug, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_contentblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_contentblock_id_seq', 1, false);


--
-- Data for Name: pages_faqspage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_faqspage (page_ptr_id, body) FROM stdin;
\.


--
-- Data for Name: pages_homepage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_homepage (page_ptr_id, title_text, body) FROM stdin;
3	<h3>Welcome to Wagtail Cookiecutter Foundation</h3>	<p>A cookiecutter template for Wagtail CMS featuring Zurb Foundation front-end framework.</p>
\.


--
-- Data for Name: pages_homepagecarouselitem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_homepagecarouselitem (id, sort_order, link_external, embed_url, caption, image_id, link_document_id, link_page_id, page_id) FROM stdin;
1	0				2	\N	\N	3
2	1				9	\N	\N	3
3	2				5	\N	\N	3
4	3				8	\N	\N	3
\.


--
-- Name: pages_homepagecarouselitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_homepagecarouselitem_id_seq', 4, true);


--
-- Data for Name: pages_homepagecontentitem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_homepagecontentitem (id, sort_order, link_external, title, content, summary, slug, image_id, link_document_id, link_page_id, page_id) FROM stdin;
1	0		Foundation	<p>The most advanced responsive front-end framework in the world.</p>		1	3	\N	\N	3
2	1		Wagtail	<p>Wagtail is an open source CMS written in Python and built on the Django framework.</p>		2	10	\N	\N	3
3	2		Ansible	<p>Ansible for easy Provisioning and Deployment</p>		3	4	\N	\N	3
4	3		Sass	<p>100% SASS</p>	<p><br/></p>	4	7	\N	\N	3
5	4		PostgreSQL	<p>PostgreSQL everywhere</p>		5	6	\N	\N	3
6	5		Digital Ocean	<p>Spin up your server with the Digital ocean API</p>		6	1	\N	\N	3
\.


--
-- Name: pages_homepagecontentitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_homepagecontentitem_id_seq', 6, true);


--
-- Data for Name: pages_homepagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_homepagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_homepagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_homepagerelatedlink_id_seq', 1, false);


--
-- Data for Name: pages_standardindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_standardindexpage (page_ptr_id, subtitle, intro, feed_image_id) FROM stdin;
4		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p>	\N
\.


--
-- Data for Name: pages_standardindexpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_standardindexpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_standardindexpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_standardindexpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: pages_standardpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_standardpage (page_ptr_id, subtitle, intro, body, feed_image_id, template_string) FROM stdin;
5			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p><p><br/></p><p>Fusce et diam quis ipsum pulvinar euismod sit amet ac libero. Proin mauris ligula, egestas at tempus non, tempor et dolor. Proin porttitor, nibh quis consequat posuere, dolor eros eleifend nisi, ac semper ex nulla sit amet urna. Ut venenatis eros nec gravida molestie. Integer hendrerit mollis odio vitae porttitor. Sed ut elementum magna. Morbi laoreet odio lorem, eu fringilla nulla venenatis id. Duis nisl erat, aliquet in tortor eget, ullamcorper varius quam. Sed venenatis posuere ipsum, ut maximus ligula tristique fermentum. Ut eget porttitor quam. In varius diam quis viverra porttitor.</p><p><br/></p><p>In leo purus, efficitur ut eleifend lacinia, pharetra et metus. Nullam enim sapien, vehicula vel purus id, vehicula pretium turpis. Maecenas mattis nulla convallis leo sodales vulputate. In nunc nunc, pretium ut turpis in, tempor varius ligula. Vestibulum facilisis enim ac sagittis vestibulum. Phasellus eros lectus, posuere nec malesuada efficitur, dictum sit amet magna. Phasellus varius dui ac nisi pretium dignissim. Etiam elementum lacus urna, in tincidunt sem pellentesque vitae. Etiam porta purus id porta dictum. Curabitur tristique iaculis turpis, eget mollis mauris commodo at. Nullam dignissim, tellus sed porttitor volutpat, ex lectus facilisis ante, at egestas tortor tellus sit amet massa. Cras pellentesque venenatis est sed molestie. Donec sollicitudin erat ac rhoncus egestas. Pellentesque condimentum non elit suscipit commodo. Suspendisse a felis ac leo egestas venenatis.</p>	\N	pages/standard_page.html
\.


--
-- Data for Name: pages_standardpagecarouselitem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_standardpagecarouselitem (id, sort_order, link_external, embed_url, caption, image_id, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_standardpagecarouselitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_standardpagecarouselitem_id_seq', 1, false);


--
-- Data for Name: pages_standardpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_standardpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: pages_standardpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_standardpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: pages_testimonial; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY pages_testimonial (id, link_external, name, text, link_document_id, link_page_id, page_id, photo_id) FROM stdin;
\.


--
-- Name: pages_testimonial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('pages_testimonial_id_seq', 1, false);


--
-- Data for Name: people_personindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personindexpage (page_ptr_id, subtitle, intro) FROM stdin;
\.


--
-- Data for Name: people_personindexpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personindexpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: people_personindexpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('people_personindexpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: people_personpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personpage (page_ptr_id, name_organization, telephone, email, address_1, address_2, city, country, post_code, intro, biography, feed_image_id, image_id, role_id) FROM stdin;
\.


--
-- Data for Name: people_personpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: people_personpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('people_personpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: people_personpagetag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Name: people_personpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('people_personpagetag_id_seq', 1, false);


--
-- Data for Name: people_personrole; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY people_personrole (id, name) FROM stdin;
\.


--
-- Name: people_personrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('people_personrole_id_seq', 1, false);


--
-- Data for Name: photo_gallery_galleryindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY photo_gallery_galleryindexpage (page_ptr_id, intro, feed_image_id) FROM stdin;
8	<p>Welcome to photo gallery!</p>	\N
\.


--
-- Data for Name: photo_gallery_gallerypage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY photo_gallery_gallerypage (page_ptr_id, feed_image_id) FROM stdin;
9	9
\.


--
-- Data for Name: photo_gallery_gallerypagetag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY photo_gallery_gallerypagetag (id, content_object_id, tag_id) FROM stdin;
2	9	3
\.


--
-- Name: photo_gallery_gallerypagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('photo_gallery_gallerypagetag_id_seq', 2, true);


--
-- Data for Name: products_productindexpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY products_productindexpage (page_ptr_id, subtitle, intro) FROM stdin;
\.


--
-- Data for Name: products_productindexpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY products_productindexpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: products_productindexpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('products_productindexpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: products_productpage; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY products_productpage (page_ptr_id, price, description, feed_image_id, image_id) FROM stdin;
\.


--
-- Data for Name: products_productpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY products_productpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: products_productpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('products_productpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: products_productpagetag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY products_productpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Name: products_productpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('products_productpagetag_id_seq', 1, false);


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY taggit_tag (id, name, slug) FROM stdin;
1	sample	sample
2	example	example
3	photo_gallery	photo_gallery
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 3, true);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	3	1
2	2	3	2
3	3	3	1
4	9	2	3
5	8	2	3
6	5	2	3
7	2	2	3
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 7, true);


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_collection_id_seq', 1, true);


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	4
2	1	2	4
3	1	1	5
4	1	2	5
5	1	1	1
6	1	2	1
7	1	1	2
8	1	2	2
\.


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N
3	00010001	2	6	Homepage	home	t	f	/home/		t		\N	\N	f	4	\N	f	2015-11-25 16:28:13.574+05:30	2015-11-25 16:26:52.276+05:30
4	000100010001	3	1	Standard Index	standard-index	t	f	/home/standard-index/		t		\N	\N	f	31	1	f	2015-11-25 16:32:23.944+05:30	2015-11-25 16:32:24.037+05:30
5	0001000100010001	4	0	Standard Page	standard-page	t	f	/home/standard-index/standard-page/		t		\N	\N	f	34	1	f	2015-11-25 16:33:29.496+05:30	2015-11-25 16:33:29.563+05:30
6	000100010004	3	1	Documents Gallery	documents-gallery	t	f	/home/documents-gallery/		t		\N	\N	f	69	1	f	2015-11-25 16:34:35.212+05:30	2015-11-25 16:34:35.311+05:30
7	0001000100040001	4	0	Sample Documents	sample-documents	t	f	/home/documents-gallery/sample-documents/		t		\N	\N	f	71	1	f	2015-11-25 16:35:18.13+05:30	2015-11-25 16:35:18.235+05:30
8	000100010005	3	1	Photo Gallery	photo-gallery	t	f	/home/photo-gallery/		t		\N	\N	f	61	1	f	2015-11-25 16:38:14.381+05:30	2015-11-25 16:38:14.455+05:30
9	0001000100050001	4	0	Sample gallery	sample-gallery	t	f	/home/photo-gallery/sample-gallery/		t		\N	\N	f	63	1	f	2015-11-25 16:40:12.019+05:30	2015-11-25 16:39:14.114+05:30
10	000100010003	3	1	Blog Index	blog-index	t	f	/home/blog-index/		t		\N	\N	f	40	1	f	2015-11-25 16:41:24.451+05:30	2015-11-25 16:41:24.62+05:30
11	0001000100030001	4	0	Blog Post 1	blog-post-1	t	f	/home/blog-index/blog-post-1/		t		\N	\N	f	44	1	f	2015-11-25 16:42:46.24+05:30	2015-11-25 16:42:46.313+05:30
12	000100010006	3	0	Contact Us	contact-us	t	f	/home/contact-us/		t		\N	\N	f	54	1	f	2015-12-22 16:35:45.446+05:30	2015-12-22 16:35:45.575+05:30
13	000100010002	3	1	Event Index	event-index	t	f	/home/event-index/		t		\N	\N	f	46	1	f	2015-12-22 17:01:32.889+05:30	2015-12-22 16:58:02.862+05:30
14	0001000100020001	4	0	Cookiecutter launch	cookiecutter-launch	t	f	/home/event-index/cookiecutter-launch/		t		\N	\N	f	50	1	f	2015-12-22 17:06:04.984+05:30	2015-12-22 17:03:02.643+05:30
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 14, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2015-11-25 16:18:11.66+05:30	{"carousel_items": [], "search_description": "", "owner": null, "latest_revision_created_at": null, "go_live_at": null, "related_links": [], "title": "Homepage", "seo_title": "", "slug": "home", "live": true, "has_unpublished_changes": false, "body": "<p>A cookiecutter template for Wagtail CMS featuring Zurb Foundation front-end framework.</p>", "content_items": [], "numchild": 0, "title_text": "<h3>Welcome to Wagtail Cookiecutter Foundation</h3>", "content_type": 4, "show_in_menus": false, "path": "00010001", "url_path": "/home/", "expired": false, "pk": 3, "locked": false, "depth": 2, "first_published_at": null, "expire_at": null}	\N	3	1
2	f	2015-11-25 16:26:52.096+05:30	{"carousel_items": [{"link_page": null, "embed_url": "", "image": 2, "link_external": "", "caption": "", "sort_order": 0, "link_document": null, "pk": null, "page": 3}, {"link_page": null, "embed_url": "", "image": 9, "link_external": "", "caption": "", "sort_order": 1, "link_document": null, "pk": null, "page": 3}, {"link_page": null, "embed_url": "", "image": 5, "link_external": "", "caption": "", "sort_order": 2, "link_document": null, "pk": null, "page": 3}, {"link_page": null, "embed_url": "", "image": 8, "link_external": "", "caption": "", "sort_order": 3, "link_document": null, "pk": null, "page": 3}], "search_description": "", "owner": null, "latest_revision_created_at": "2015-11-25T10:48:11.660Z", "go_live_at": null, "related_links": [], "title": "Homepage", "seo_title": "", "slug": "home", "live": true, "has_unpublished_changes": true, "body": "<p>A cookiecutter template for Wagtail CMS featuring Zurb Foundation front-end framework.</p>", "content_items": [{"slug": "1", "link_page": null, "title": "Foundation", "image": 3, "link_external": "", "summary": "", "content": "<p>The most advanced responsive front-end framework in the world.</p>", "sort_order": 0, "link_document": null, "pk": null, "page": 3}, {"slug": "2", "link_page": null, "title": "Wagtail", "image": 10, "link_external": "", "summary": "", "content": "<p>Wagtail is an open source CMS written in Python and built on the Django framework.</p>", "sort_order": 1, "link_document": null, "pk": null, "page": 3}, {"slug": "3", "link_page": null, "title": "Ansible", "image": 4, "link_external": "", "summary": "", "content": "<p>Ansible for easy Provisioning and Deployment</p>", "sort_order": 2, "link_document": null, "pk": null, "page": 3}, {"slug": "4", "link_page": null, "title": "Sass", "image": 7, "link_external": "", "summary": "<p><br/></p>", "content": "<p>100% SASS</p>", "sort_order": 3, "link_document": null, "pk": null, "page": 3}, {"slug": "5", "link_page": null, "title": "PostgreSQL", "image": null, "link_external": "", "summary": "", "content": "<p>PostgreSQL everywhere</p>", "sort_order": 4, "link_document": null, "pk": null, "page": 3}, {"slug": "6", "link_page": null, "title": "Digital Ocean", "image": 1, "link_external": "", "summary": "", "content": "<p>Spin up your server with the Digital ocean API</p>", "sort_order": 5, "link_document": null, "pk": null, "page": 3}], "numchild": 0, "title_text": "<h3>Welcome to Wagtail Cookiecutter Foundation</h3>", "content_type": 4, "show_in_menus": true, "path": "00010001", "url_path": "/home/", "expired": false, "pk": 3, "locked": false, "depth": 2, "first_published_at": null, "expire_at": null}	\N	3	1
3	f	2015-11-25 16:28:13.574+05:30	{"carousel_items": [{"link_page": null, "embed_url": "", "image": 2, "link_external": "", "caption": "", "sort_order": 0, "link_document": null, "pk": 1, "page": 3}, {"link_page": null, "embed_url": "", "image": 9, "link_external": "", "caption": "", "sort_order": 1, "link_document": null, "pk": 2, "page": 3}, {"link_page": null, "embed_url": "", "image": 5, "link_external": "", "caption": "", "sort_order": 2, "link_document": null, "pk": 3, "page": 3}, {"link_page": null, "embed_url": "", "image": 8, "link_external": "", "caption": "", "sort_order": 3, "link_document": null, "pk": 4, "page": 3}], "search_description": "", "owner": null, "latest_revision_created_at": "2015-11-25T10:56:52.096Z", "go_live_at": null, "related_links": [], "title": "Homepage", "seo_title": "", "slug": "home", "live": true, "has_unpublished_changes": false, "body": "<p>A cookiecutter template for Wagtail CMS featuring Zurb Foundation front-end framework.</p>", "content_items": [{"slug": "1", "link_page": null, "title": "Foundation", "image": 3, "link_external": "", "summary": "", "content": "<p>The most advanced responsive front-end framework in the world.</p>", "sort_order": 0, "link_document": null, "pk": 1, "page": 3}, {"slug": "2", "link_page": null, "title": "Wagtail", "image": 10, "link_external": "", "summary": "", "content": "<p>Wagtail is an open source CMS written in Python and built on the Django framework.</p>", "sort_order": 1, "link_document": null, "pk": 2, "page": 3}, {"slug": "3", "link_page": null, "title": "Ansible", "image": 4, "link_external": "", "summary": "", "content": "<p>Ansible for easy Provisioning and Deployment</p>", "sort_order": 2, "link_document": null, "pk": 3, "page": 3}, {"slug": "4", "link_page": null, "title": "Sass", "image": 7, "link_external": "", "summary": "<p><br/></p>", "content": "<p>100% SASS</p>", "sort_order": 3, "link_document": null, "pk": 4, "page": 3}, {"slug": "5", "link_page": null, "title": "PostgreSQL", "image": 6, "link_external": "", "summary": "", "content": "<p>PostgreSQL everywhere</p>", "sort_order": 4, "link_document": null, "pk": 5, "page": 3}, {"slug": "6", "link_page": null, "title": "Digital Ocean", "image": 1, "link_external": "", "summary": "", "content": "<p>Spin up your server with the Digital ocean API</p>", "sort_order": 5, "link_document": null, "pk": 6, "page": 3}], "numchild": 0, "title_text": "<h3>Welcome to Wagtail Cookiecutter Foundation</h3>", "content_type": 4, "show_in_menus": true, "path": "00010001", "url_path": "/home/", "expired": false, "pk": 3, "locked": false, "depth": 2, "first_published_at": "2015-11-25T10:56:52.276Z", "expire_at": null}	\N	3	1
4	f	2015-11-25 16:32:23.944+05:30	{"subtitle": "", "search_description": "", "owner": 1, "intro": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p>", "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "related_links": [], "title": "Standard Index", "seo_title": "", "slug": "standard-index", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 31, "show_in_menus": true, "path": "000100010001", "url_path": "/home/standard-index/", "expired": false, "pk": 4, "locked": false, "depth": 3, "first_published_at": null, "expire_at": null}	\N	4	1
5	f	2015-11-25 16:33:29.496+05:30	{"subtitle": "", "carousel_items": [], "search_description": "", "owner": 1, "intro": "", "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "related_links": [], "title": "Standard Page", "seo_title": "", "slug": "standard-page", "live": true, "has_unpublished_changes": false, "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p><p><br/></p><p>Fusce et diam quis ipsum pulvinar euismod sit amet ac libero. Proin mauris ligula, egestas at tempus non, tempor et dolor. Proin porttitor, nibh quis consequat posuere, dolor eros eleifend nisi, ac semper ex nulla sit amet urna. Ut venenatis eros nec gravida molestie. Integer hendrerit mollis odio vitae porttitor. Sed ut elementum magna. Morbi laoreet odio lorem, eu fringilla nulla venenatis id. Duis nisl erat, aliquet in tortor eget, ullamcorper varius quam. Sed venenatis posuere ipsum, ut maximus ligula tristique fermentum. Ut eget porttitor quam. In varius diam quis viverra porttitor.</p><p><br/></p><p>In leo purus, efficitur ut eleifend lacinia, pharetra et metus. Nullam enim sapien, vehicula vel purus id, vehicula pretium turpis. Maecenas mattis nulla convallis leo sodales vulputate. In nunc nunc, pretium ut turpis in, tempor varius ligula. Vestibulum facilisis enim ac sagittis vestibulum. Phasellus eros lectus, posuere nec malesuada efficitur, dictum sit amet magna. Phasellus varius dui ac nisi pretium dignissim. Etiam elementum lacus urna, in tincidunt sem pellentesque vitae. Etiam porta purus id porta dictum. Curabitur tristique iaculis turpis, eget mollis mauris commodo at. Nullam dignissim, tellus sed porttitor volutpat, ex lectus facilisis ante, at egestas tortor tellus sit amet massa. Cras pellentesque venenatis est sed molestie. Donec sollicitudin erat ac rhoncus egestas. Pellentesque condimentum non elit suscipit commodo. Suspendisse a felis ac leo egestas venenatis.</p>", "numchild": 0, "content_type": 34, "show_in_menus": true, "path": "0001000100010001", "url_path": "/home/standard-index/standard-page/", "expired": false, "pk": 5, "locked": false, "depth": 4, "first_published_at": null, "expire_at": null}	\N	5	1
6	f	2015-11-25 16:34:35.212+05:30	{"search_description": "", "owner": 1, "intro": "<p>Welcome to documents gallery!</p>", "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "title": "Documents Gallery", "seo_title": "", "slug": "documents-gallery", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 69, "show_in_menus": true, "path": "000100010002", "url_path": "/home/documents-gallery/", "expired": false, "pk": 6, "locked": false, "depth": 3, "first_published_at": null, "expire_at": null}	\N	6	1
7	f	2015-11-25 16:35:18.13+05:30	{"search_description": "", "owner": 1, "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "title": "Sample Documents", "seo_title": "", "slug": "sample-documents", "live": true, "has_unpublished_changes": false, "tagged_items": [{"pk": 1, "tag": 1, "content_object": 7}, {"pk": 2, "tag": 2, "content_object": 7}], "numchild": 0, "content_type": 71, "show_in_menus": true, "path": "0001000100020001", "url_path": "/home/documents-gallery/sample-documents/", "expired": false, "pk": 7, "locked": false, "depth": 4, "first_published_at": null, "expire_at": null}	\N	7	1
8	f	2015-11-25 16:38:14.381+05:30	{"search_description": "", "owner": 1, "intro": "<p>Welcome to photo gallery!</p>", "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "title": "Photo Gallery", "seo_title": "", "slug": "photo-gallery", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 61, "show_in_menus": true, "path": "000100010003", "url_path": "/home/photo-gallery/", "expired": false, "pk": 8, "locked": false, "depth": 3, "first_published_at": null, "expire_at": null}	\N	8	1
9	f	2015-11-25 16:39:13.966+05:30	{"search_description": "", "owner": 1, "latest_revision_created_at": null, "go_live_at": null, "feed_image": null, "title": "Sample gallery", "seo_title": "", "slug": "sample-gallery", "live": true, "has_unpublished_changes": false, "tagged_items": [{"pk": 1, "tag": 3, "content_object": 9}], "numchild": 0, "content_type": 63, "show_in_menus": true, "path": "0001000100030001", "url_path": "/home/photo-gallery/sample-gallery/", "expired": false, "pk": 9, "locked": false, "depth": 4, "first_published_at": null, "expire_at": null}	\N	9	1
10	f	2015-11-25 16:40:12.019+05:30	{"search_description": "", "owner": 1, "latest_revision_created_at": "2015-11-25T11:09:13.966Z", "go_live_at": null, "feed_image": 9, "title": "Sample gallery", "seo_title": "", "slug": "sample-gallery", "live": true, "has_unpublished_changes": false, "tagged_items": [{"pk": null, "tag": 3, "content_object": 9}], "numchild": 0, "content_type": 63, "show_in_menus": true, "path": "0001000100030001", "url_path": "/home/photo-gallery/sample-gallery/", "expired": false, "pk": 9, "locked": false, "depth": 4, "first_published_at": "2015-11-25T11:09:14.114Z", "expire_at": null}	\N	9	1
11	f	2015-11-25 16:41:24.451+05:30	{"search_description": "", "owner": 1, "intro": "", "latest_revision_created_at": null, "go_live_at": null, "related_links": [], "title": "Blog Index", "seo_title": "", "slug": "blog-index", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 40, "show_in_menus": true, "path": "000100010004", "url_path": "/home/blog-index/", "expired": false, "pk": 10, "locked": false, "depth": 3, "first_published_at": null, "expire_at": null}	\N	10	1
12	f	2015-11-25 16:42:46.24+05:30	{"carousel_items": [], "search_description": "", "owner": 1, "intro": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat.</p>", "latest_revision_created_at": null, "go_live_at": null, "feed_image": 9, "related_links": [], "title": "Blog Post 1", "seo_title": "", "slug": "blog-post-1", "live": true, "has_unpublished_changes": false, "tagged_items": [], "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et mauris eu nibh elementum blandit varius sit amet enim. Quisque massa leo, ornare in mattis vitae, vehicula vestibulum diam. Phasellus id leo placerat, vehicula diam nec, interdum mi. Nunc lacinia massa tristique nunc accumsan, eu dapibus odio feugiat. Donec varius quam dictum placerat porttitor. Vivamus fermentum cursus nibh in facilisis. Aenean in justo auctor, faucibus risus eu, semper nisl. Ut nec suscipit nibh. Donec feugiat eget dui in rhoncus. Curabitur imperdiet tortor ut quam tempus sagittis. Morbi lectus magna, viverra ut turpis a, dapibus sollicitudin diam. Morbi vel urna suscipit, sodales ante id, luctus velit.</p><p><br/></p><p>Fusce et diam quis ipsum pulvinar euismod sit amet ac libero. Proin mauris ligula, egestas at tempus non, tempor et dolor. Proin porttitor, nibh quis consequat posuere, dolor eros eleifend nisi, ac semper ex nulla sit amet urna. Ut venenatis eros nec gravida molestie. Integer hendrerit mollis odio vitae porttitor. Sed ut elementum magna. Morbi laoreet odio lorem, eu fringilla nulla venenatis id. Duis nisl erat, aliquet in tortor eget, ullamcorper varius quam. Sed venenatis posuere ipsum, ut maximus ligula tristique fermentum. Ut eget porttitor quam. In varius diam quis viverra porttitor.</p><p><br/></p><p>In leo purus, efficitur ut eleifend lacinia, pharetra et metus. Nullam enim sapien, vehicula vel purus id, vehicula pretium turpis. Maecenas mattis nulla convallis leo sodales vulputate. In nunc nunc, pretium ut turpis in, tempor varius ligula. Vestibulum facilisis enim ac sagittis vestibulum. Phasellus eros lectus, posuere nec malesuada efficitur, dictum sit amet magna. Phasellus varius dui ac nisi pretium dignissim. Etiam elementum lacus urna, in tincidunt sem pellentesque vitae. Etiam porta purus id porta dictum. Curabitur tristique iaculis turpis, eget mollis mauris commodo at. Nullam dignissim, tellus sed porttitor volutpat, ex lectus facilisis ante, at egestas tortor tellus sit amet massa. Cras pellentesque venenatis est sed molestie. Donec sollicitudin erat ac rhoncus egestas. Pellentesque condimentum non elit suscipit commodo. Suspendisse a felis ac leo egestas venenatis.</p>", "numchild": 0, "content_type": 44, "show_in_menus": true, "date": "2015-11-20", "path": "0001000100040001", "url_path": "/home/blog-index/blog-post-1/", "expired": false, "pk": 11, "locked": false, "depth": 4, "first_published_at": null, "expire_at": null}	\N	11	1
13	f	2015-12-22 16:35:45.446+05:30	{"to_address": "", "from_address": "", "telephone": "", "search_description": "", "owner": 1, "intro": "", "latest_revision_created_at": null, "go_live_at": null, "name_organization": "", "city": "", "title": "Contact Us", "seo_title": "", "slug": "contact-us", "live": true, "has_unpublished_changes": false, "subject": "", "email": "", "post_code": "", "numchild": 0, "content_type": 54, "show_in_menus": true, "thank_you_text": "<p>Thanks for your interest</p>", "path": "000100010005", "url_path": "/home/contact-us/", "expired": false, "pk": 12, "locked": false, "country": "", "form_fields": [{"default_value": "", "field_type": "singleline", "required": true, "choices": "", "sort_order": 0, "help_text": "", "pk": 1, "label": "Name", "page": 12}, {"default_value": "", "field_type": "email", "required": true, "choices": "", "sort_order": 1, "help_text": "", "pk": 2, "label": "e-mail", "page": 12}, {"default_value": "", "field_type": "multiline", "required": true, "choices": "", "sort_order": 2, "help_text": "", "pk": 3, "label": "Message", "page": 12}], "depth": 3, "address_1": "", "address_2": "", "first_published_at": null, "expire_at": null}	\N	12	1
14	f	2015-12-22 16:58:02.697+05:30	{"search_description": "", "owner": 1, "intro": "<p>Upcoming Events</p>", "latest_revision_created_at": null, "go_live_at": null, "related_links": [], "title": "event-index", "seo_title": "", "slug": "event-index", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 46, "show_in_menus": true, "path": "000100010006", "url_path": "/home/event-index/", "expired": false, "pk": 13, "locked": false, "depth": 3, "first_published_at": null, "expire_at": null}	\N	13	1
15	f	2015-12-22 16:58:49.683+05:30	{"search_description": "", "owner": 1, "intro": "<p>Upcoming Events</p>", "latest_revision_created_at": "2015-12-22T11:28:02.697Z", "go_live_at": null, "related_links": [], "title": "Event-index", "seo_title": "", "slug": "event-index", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 46, "show_in_menus": true, "path": "000100010002", "url_path": "/home/event-index/", "expired": false, "pk": 13, "locked": false, "depth": 3, "first_published_at": "2015-12-22T11:28:02.862Z", "expire_at": null}	\N	13	1
16	f	2015-12-22 17:01:32.889+05:30	{"search_description": "", "owner": 1, "intro": "<p>Upcoming Events</p>", "latest_revision_created_at": "2015-12-22T11:28:49.683Z", "go_live_at": null, "related_links": [], "title": "Event Index", "seo_title": "", "slug": "event-index", "live": true, "has_unpublished_changes": false, "numchild": 0, "content_type": 46, "show_in_menus": true, "path": "000100010002", "url_path": "/home/event-index/", "expired": false, "pk": 13, "locked": false, "depth": 3, "first_published_at": "2015-12-22T11:28:02.862Z", "expire_at": null}	\N	13	1
17	f	2015-12-22 17:03:02.591+05:30	{"carousel_items": [], "show_in_menus": false, "search_description": "", "owner": 1, "cost": "", "latest_revision_created_at": null, "time_to": "18:00:00", "go_live_at": null, "feed_image": null, "related_links": [], "title": "Cookiecutter launch", "signup_link": "", "date_from": "2015-12-16", "seo_title": "", "slug": "cookiecutter-launch", "live": true, "location": "ChrisDev Headquarters", "has_unpublished_changes": false, "body": "", "numchild": 0, "time_from": "17:00:00", "speakers": [], "audience": "public", "content_type": 50, "date_to": "2015-12-16", "path": "0001000100020001", "url_path": "/home/event-index/cookiecutter-launch/", "expired": false, "pk": 14, "locked": false, "depth": 4, "first_published_at": null, "expire_at": null}	\N	14	1
18	f	2015-12-22 17:03:24.302+05:30	{"carousel_items": [], "show_in_menus": true, "search_description": "", "owner": 1, "cost": "", "latest_revision_created_at": "2015-12-22T11:33:02.591Z", "time_to": "18:00:00", "go_live_at": null, "feed_image": null, "related_links": [], "title": "Cookiecutter launch", "signup_link": "", "date_from": "2015-12-16", "seo_title": "", "slug": "cookiecutter-launch", "live": true, "location": "ChrisDev Headquarters", "has_unpublished_changes": false, "body": "", "numchild": 0, "time_from": "17:00:00", "speakers": [], "audience": "public", "content_type": 50, "date_to": "2015-12-16", "path": "0001000100020001", "url_path": "/home/event-index/cookiecutter-launch/", "expired": false, "pk": 14, "locked": false, "depth": 4, "first_published_at": "2015-12-22T11:33:02.643Z", "expire_at": null}	\N	14	1
19	f	2015-12-22 17:05:12.797+05:30	{"carousel_items": [], "show_in_menus": true, "search_description": "", "owner": 1, "cost": "", "latest_revision_created_at": "2015-12-22T11:33:24.302Z", "time_to": "18:00:00", "go_live_at": null, "feed_image": null, "related_links": [], "title": "Cookiecutter launch", "signup_link": "", "date_from": "2015-12-23", "seo_title": "", "slug": "cookiecutter-launch", "live": true, "location": "ChrisDev Headquarters", "has_unpublished_changes": false, "body": "", "numchild": 0, "time_from": "17:00:00", "speakers": [], "audience": "public", "content_type": 50, "date_to": "2015-12-24", "path": "0001000100020001", "url_path": "/home/event-index/cookiecutter-launch/", "expired": false, "pk": 14, "locked": false, "depth": 4, "first_published_at": "2015-12-22T11:33:02.643Z", "expire_at": null}	\N	14	1
20	f	2015-12-22 17:06:04.984+05:30	{"carousel_items": [], "show_in_menus": true, "search_description": "", "owner": 1, "cost": "", "latest_revision_created_at": "2015-12-22T11:35:12.797Z", "time_to": "18:00:00", "go_live_at": null, "feed_image": null, "related_links": [], "title": "Cookiecutter launch", "signup_link": "", "date_from": "2015-12-23", "seo_title": "", "slug": "cookiecutter-launch", "live": true, "location": "ChrisDev Headquarters", "has_unpublished_changes": false, "body": "", "numchild": 0, "time_from": "17:00:00", "speakers": [], "audience": "public", "content_type": 50, "date_to": null, "path": "0001000100020001", "url_path": "/home/event-index/cookiecutter-launch/", "expired": false, "pk": 14, "locked": false, "depth": 4, "first_published_at": "2015-12-22T11:33:02.643Z", "expire_at": null}	\N	14	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 20, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_pageviewrestriction (id, password, page_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
2	localhost	80	t	3	\N
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 2, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id) FROM stdin;
1	document	documents/document.doc	2015-11-25 16:22:08.802+05:30	1	1
2	example	documents/example.docx	2015-11-25 16:22:33.409+05:30	1	1
3	sample	documents/sample.pdf	2015-11-25 16:22:53.099+05:30	1	1
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 3, true);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
1	{"e-mail": "testemail@testemail.com", "message": "Test message for sample test.", "name": "Test name"}	2015-12-22 16:49:13.033+05:30	12
2	{"e-mail": "testemail@testemail.com", "message": "Test message for sample test.", "name": "Test name"}	2015-12-22 17:19:33.595+05:30	12
3	{"e-mail": "testemail@testemail.com", "message": "Test message for sample test.", "name": "Test name"}	2015-12-22 17:33:28.152+05:30	12
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 3, true);


--
-- Data for Name: wagtailimages_filter; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailimages_filter (id, spec) FROM stdin;
1	max-165x165
2	width-1400
3	fill-60x60
4	original
5	max-800x600
6	width-1200
7	fill-500x350
\.


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailimages_filter_id_seq', 7, true);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id) FROM stdin;
1	digital-ocean-logo.png	original_images/digital.png	60	60	2015-11-25 16:19:00.677+05:30	\N	\N	\N	\N	1	2059	1
2	foundation.png	original_images/foundation_5.png	1300	500	2015-11-25 16:19:01.327+05:30	\N	\N	\N	\N	1	534598	1
3	foundation-logo.png	original_images/hero-image.png	60	60	2015-11-25 16:19:01.441+05:30	\N	\N	\N	\N	1	6607	1
4	ansible-logo.png	original_images/image-ansible.png	60	60	2015-11-25 16:19:01.511+05:30	\N	\N	\N	\N	1	1585	1
5	postgresql.jpg	original_images/postgresql.jpg	1300	500	2015-11-25 16:19:01.592+05:30	\N	\N	\N	\N	1	78794	1
6	postgresql-logo.png	original_images/PostgreSQL_logo.3colors.120x120.png	60	60	2015-11-25 16:19:01.672+05:30	\N	\N	\N	\N	1	4433	1
7	sass-logo.png	original_images/sass.png	60	60	2015-11-25 16:19:01.76+05:30	\N	\N	\N	\N	1	3259	1
8	sass.png	original_images/sass-logo-new.png	1300	500	2015-11-25 16:19:01.839+05:30	\N	\N	\N	\N	1	51541	1
9	wagtail.jpg	original_images/wagtail.jpg	1300	500	2015-11-25 16:19:01.92+05:30	\N	\N	\N	\N	1	36907	1
10	wagtail-logo.png	original_images/Wagtail_CMS_logo.png	60	60	2015-11-25 16:19:02.016+05:30	\N	\N	\N	\N	1	1353	1
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 10, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, filter_id, image_id) FROM stdin;
1	images/Wagtail_CMS_logo.max-165x165.png	60	60		1	10
2	images/wagtail.max-165x165.jpg	165	63		1	9
3	images/sass-logo-new.max-165x165.png	165	63		1	8
4	images/sass.max-165x165.png	60	60		1	7
5	images/PostgreSQL_logo.3colors.120x120.max-165x165.png	60	60		1	6
6	images/postgresql.max-165x165.jpg	165	63		1	5
7	images/image-ansible.max-165x165.png	60	60		1	4
8	images/hero-image.max-165x165.png	60	60		1	3
9	images/foundation_5.max-165x165.png	165	63		1	2
10	images/digital.max-165x165.png	60	60		1	1
11	images/foundation_5.width-1400.png	1300	500		2	2
12	images/wagtail.width-1400.jpg	1300	500		2	9
13	images/postgresql.width-1400.jpg	1300	500		2	5
14	images/sass-logo-new.width-1400.png	1300	500		2	8
15	images/hero-image.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	3
16	images/Wagtail_CMS_logo.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	10
17	images/image-ansible.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	4
18	images/sass.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	7
19	images/digital.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	1
20	images/PostgreSQL_logo.3colors.120x120.2e16d0ba.fill-60x60.png	60	60	2e16d0ba	3	6
21	images/wagtail.original.jpg	1300	500		4	9
22	images/wagtail.max-800x600.jpg	800	307		5	9
23	images/sass-logo-new.original.png	1300	500		4	8
24	images/sass-logo-new.max-800x600.png	800	307		5	8
25	images/postgresql.original.jpg	1300	500		4	5
26	images/postgresql.max-800x600.jpg	800	307		5	5
27	images/foundation_5.original.png	1300	500		4	2
28	images/foundation_5.max-800x600.png	800	307		5	2
29	images/wagtail.width-1200.jpg	1200	461		6	9
30	images/sass-logo-new.width-1200.png	1200	461		6	8
31	images/postgresql.width-1200.jpg	1200	461		6	5
32	images/foundation_5.width-1200.png	1200	461		6	2
33	images/wagtail.2e16d0ba.fill-500x350.jpg	500	350	2e16d0ba	7	9
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 33, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailsearchpromotions_searchpromotion; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailsearchpromotions_searchpromotion (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: puri
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: puri
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogindexpage
    ADD CONSTRAINT blog_blogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_blogindexpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogindexpagerelatedlink
    ADD CONSTRAINT blog_blogindexpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogpage
    ADD CONSTRAINT blog_blogpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_blogpagecarouselitem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogpagecarouselitem
    ADD CONSTRAINT blog_blogpagecarouselitem_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogpagerelatedlink
    ADD CONSTRAINT blog_blogpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY blog_blogpagetag
    ADD CONSTRAINT blog_blogpagetag_pkey PRIMARY KEY (id);


--
-- Name: contact_contactformfield_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY contact_contactformfield
    ADD CONSTRAINT contact_contactformfield_pkey PRIMARY KEY (id);


--
-- Name: contact_contactpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY contact_contactpage
    ADD CONSTRAINT contact_contactpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: contact_formfield_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY contact_formfield
    ADD CONSTRAINT contact_formfield_pkey PRIMARY KEY (id);


--
-- Name: contact_formpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY contact_formpage
    ADD CONSTRAINT contact_formpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: documents_gallery_documentsindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY documents_gallery_documentsindexpage
    ADD CONSTRAINT documents_gallery_documentsindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: documents_gallery_documentspage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY documents_gallery_documentspage
    ADD CONSTRAINT documents_gallery_documentspage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: documents_gallery_documentspagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY documents_gallery_documentspagetag
    ADD CONSTRAINT documents_gallery_documentspagetag_pkey PRIMARY KEY (id);


--
-- Name: events_eventindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventindexpage
    ADD CONSTRAINT events_eventindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: events_eventindexpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventindexpagerelatedlink
    ADD CONSTRAINT events_eventindexpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: events_eventpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventpage
    ADD CONSTRAINT events_eventpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: events_eventpagecarouselitem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventpagecarouselitem
    ADD CONSTRAINT events_eventpagecarouselitem_pkey PRIMARY KEY (id);


--
-- Name: events_eventpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventpagerelatedlink
    ADD CONSTRAINT events_eventpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: events_eventpagespeaker_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY events_eventpagespeaker
    ADD CONSTRAINT events_eventpagespeaker_pkey PRIMARY KEY (id);


--
-- Name: pages_advert_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_advert
    ADD CONSTRAINT pages_advert_pkey PRIMARY KEY (id);


--
-- Name: pages_contentblock_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_contentblock
    ADD CONSTRAINT pages_contentblock_pkey PRIMARY KEY (id);


--
-- Name: pages_faqspage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_faqspage
    ADD CONSTRAINT pages_faqspage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_homepage
    ADD CONSTRAINT pages_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_homepagecarouselitem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_homepagecarouselitem
    ADD CONSTRAINT pages_homepagecarouselitem_pkey PRIMARY KEY (id);


--
-- Name: pages_homepagecontentitem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_homepagecontentitem
    ADD CONSTRAINT pages_homepagecontentitem_pkey PRIMARY KEY (id);


--
-- Name: pages_homepagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_homepagerelatedlink
    ADD CONSTRAINT pages_homepagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: pages_standardindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_standardindexpage
    ADD CONSTRAINT pages_standardindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_standardindexpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_standardindexpagerelatedlink
    ADD CONSTRAINT pages_standardindexpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: pages_standardpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_standardpage
    ADD CONSTRAINT pages_standardpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_standardpagecarouselitem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_standardpagecarouselitem
    ADD CONSTRAINT pages_standardpagecarouselitem_pkey PRIMARY KEY (id);


--
-- Name: pages_standardpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_standardpagerelatedlink
    ADD CONSTRAINT pages_standardpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: pages_testimonial_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY pages_testimonial
    ADD CONSTRAINT pages_testimonial_pkey PRIMARY KEY (id);


--
-- Name: people_personindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personindexpage
    ADD CONSTRAINT people_personindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: people_personindexpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personindexpagerelatedlink
    ADD CONSTRAINT people_personindexpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: people_personpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personpage
    ADD CONSTRAINT people_personpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: people_personpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personpagerelatedlink
    ADD CONSTRAINT people_personpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: people_personpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personpagetag
    ADD CONSTRAINT people_personpagetag_pkey PRIMARY KEY (id);


--
-- Name: people_personrole_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY people_personrole
    ADD CONSTRAINT people_personrole_pkey PRIMARY KEY (id);


--
-- Name: photo_gallery_galleryindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY photo_gallery_galleryindexpage
    ADD CONSTRAINT photo_gallery_galleryindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: photo_gallery_gallerypage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY photo_gallery_gallerypage
    ADD CONSTRAINT photo_gallery_gallerypage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: photo_gallery_gallerypagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY photo_gallery_gallerypagetag
    ADD CONSTRAINT photo_gallery_gallerypagetag_pkey PRIMARY KEY (id);


--
-- Name: products_productindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY products_productindexpage
    ADD CONSTRAINT products_productindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: products_productindexpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY products_productindexpagerelatedlink
    ADD CONSTRAINT products_productindexpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: products_productpage_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY products_productpage
    ADD CONSTRAINT products_productpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: products_productpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY products_productpagerelatedlink
    ADD CONSTRAINT products_productpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: products_productpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY products_productpagetag
    ADD CONSTRAINT products_productpagetag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission_group_id_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site_hostname_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_url_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_spec_42ad6e02_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_spec_42ad6e02_uniq UNIQUE (spec);


--
-- Name: wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition_image_id_03110280_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_03110280_uniq UNIQUE (image_id, filter_id, focal_point_key);


--
-- Name: wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect_old_path_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailsearchpromotions_searchpromotion
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits_query_id_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: puri; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogindexpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogindexpagerelatedlink_121087a8 ON blog_blogindexpagerelatedlink USING btree (link_document_id);


--
-- Name: blog_blogindexpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogindexpagerelatedlink_1a63c800 ON blog_blogindexpagerelatedlink USING btree (page_id);


--
-- Name: blog_blogindexpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogindexpagerelatedlink_5b76e141 ON blog_blogindexpagerelatedlink USING btree (link_page_id);


--
-- Name: blog_blogpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpage_92482941 ON blog_blogpage USING btree (feed_image_id);


--
-- Name: blog_blogpagecarouselitem_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagecarouselitem_121087a8 ON blog_blogpagecarouselitem USING btree (link_document_id);


--
-- Name: blog_blogpagecarouselitem_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagecarouselitem_1a63c800 ON blog_blogpagecarouselitem USING btree (page_id);


--
-- Name: blog_blogpagecarouselitem_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagecarouselitem_5b76e141 ON blog_blogpagecarouselitem USING btree (link_page_id);


--
-- Name: blog_blogpagecarouselitem_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagecarouselitem_f33175e6 ON blog_blogpagecarouselitem USING btree (image_id);


--
-- Name: blog_blogpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagerelatedlink_121087a8 ON blog_blogpagerelatedlink USING btree (link_document_id);


--
-- Name: blog_blogpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagerelatedlink_1a63c800 ON blog_blogpagerelatedlink USING btree (page_id);


--
-- Name: blog_blogpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagerelatedlink_5b76e141 ON blog_blogpagerelatedlink USING btree (link_page_id);


--
-- Name: blog_blogpagetag_09a80f33; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagetag_09a80f33 ON blog_blogpagetag USING btree (content_object_id);


--
-- Name: blog_blogpagetag_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX blog_blogpagetag_76f094bc ON blog_blogpagetag USING btree (tag_id);


--
-- Name: contact_contactformfield_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX contact_contactformfield_1a63c800 ON contact_contactformfield USING btree (page_id);


--
-- Name: contact_formfield_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX contact_formfield_1a63c800 ON contact_formfield USING btree (page_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: documents_gallery_documentsindexpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX documents_gallery_documentsindexpage_92482941 ON documents_gallery_documentsindexpage USING btree (feed_image_id);


--
-- Name: documents_gallery_documentspage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX documents_gallery_documentspage_92482941 ON documents_gallery_documentspage USING btree (feed_image_id);


--
-- Name: documents_gallery_documentspagetag_09a80f33; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX documents_gallery_documentspagetag_09a80f33 ON documents_gallery_documentspagetag USING btree (content_object_id);


--
-- Name: documents_gallery_documentspagetag_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX documents_gallery_documentspagetag_76f094bc ON documents_gallery_documentspagetag USING btree (tag_id);


--
-- Name: events_eventindexpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventindexpagerelatedlink_121087a8 ON events_eventindexpagerelatedlink USING btree (link_document_id);


--
-- Name: events_eventindexpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventindexpagerelatedlink_1a63c800 ON events_eventindexpagerelatedlink USING btree (page_id);


--
-- Name: events_eventindexpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventindexpagerelatedlink_5b76e141 ON events_eventindexpagerelatedlink USING btree (link_page_id);


--
-- Name: events_eventpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpage_92482941 ON events_eventpage USING btree (feed_image_id);


--
-- Name: events_eventpagecarouselitem_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagecarouselitem_121087a8 ON events_eventpagecarouselitem USING btree (link_document_id);


--
-- Name: events_eventpagecarouselitem_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagecarouselitem_1a63c800 ON events_eventpagecarouselitem USING btree (page_id);


--
-- Name: events_eventpagecarouselitem_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagecarouselitem_5b76e141 ON events_eventpagecarouselitem USING btree (link_page_id);


--
-- Name: events_eventpagecarouselitem_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagecarouselitem_f33175e6 ON events_eventpagecarouselitem USING btree (image_id);


--
-- Name: events_eventpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagerelatedlink_121087a8 ON events_eventpagerelatedlink USING btree (link_document_id);


--
-- Name: events_eventpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagerelatedlink_1a63c800 ON events_eventpagerelatedlink USING btree (page_id);


--
-- Name: events_eventpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagerelatedlink_5b76e141 ON events_eventpagerelatedlink USING btree (link_page_id);


--
-- Name: events_eventpagespeaker_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagespeaker_121087a8 ON events_eventpagespeaker USING btree (link_document_id);


--
-- Name: events_eventpagespeaker_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagespeaker_1a63c800 ON events_eventpagespeaker USING btree (page_id);


--
-- Name: events_eventpagespeaker_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagespeaker_5b76e141 ON events_eventpagespeaker USING btree (link_page_id);


--
-- Name: events_eventpagespeaker_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX events_eventpagespeaker_f33175e6 ON events_eventpagespeaker USING btree (image_id);


--
-- Name: pages_advert_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_advert_121087a8 ON pages_advert USING btree (link_document_id);


--
-- Name: pages_advert_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_advert_1a63c800 ON pages_advert USING btree (page_id);


--
-- Name: pages_advert_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_advert_5b76e141 ON pages_advert USING btree (link_page_id);


--
-- Name: pages_advert_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_advert_f33175e6 ON pages_advert USING btree (image_id);


--
-- Name: pages_contentblock_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_contentblock_121087a8 ON pages_contentblock USING btree (link_document_id);


--
-- Name: pages_contentblock_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_contentblock_1a63c800 ON pages_contentblock USING btree (page_id);


--
-- Name: pages_contentblock_2dbcba41; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_contentblock_2dbcba41 ON pages_contentblock USING btree (slug);


--
-- Name: pages_contentblock_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_contentblock_5b76e141 ON pages_contentblock USING btree (link_page_id);


--
-- Name: pages_contentblock_slug_946a161b_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_contentblock_slug_946a161b_like ON pages_contentblock USING btree (slug varchar_pattern_ops);


--
-- Name: pages_homepagecarouselitem_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecarouselitem_121087a8 ON pages_homepagecarouselitem USING btree (link_document_id);


--
-- Name: pages_homepagecarouselitem_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecarouselitem_1a63c800 ON pages_homepagecarouselitem USING btree (page_id);


--
-- Name: pages_homepagecarouselitem_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecarouselitem_5b76e141 ON pages_homepagecarouselitem USING btree (link_page_id);


--
-- Name: pages_homepagecarouselitem_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecarouselitem_f33175e6 ON pages_homepagecarouselitem USING btree (image_id);


--
-- Name: pages_homepagecontentitem_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_121087a8 ON pages_homepagecontentitem USING btree (link_document_id);


--
-- Name: pages_homepagecontentitem_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_1a63c800 ON pages_homepagecontentitem USING btree (page_id);


--
-- Name: pages_homepagecontentitem_2dbcba41; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_2dbcba41 ON pages_homepagecontentitem USING btree (slug);


--
-- Name: pages_homepagecontentitem_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_5b76e141 ON pages_homepagecontentitem USING btree (link_page_id);


--
-- Name: pages_homepagecontentitem_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_f33175e6 ON pages_homepagecontentitem USING btree (image_id);


--
-- Name: pages_homepagecontentitem_slug_2f312148_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagecontentitem_slug_2f312148_like ON pages_homepagecontentitem USING btree (slug varchar_pattern_ops);


--
-- Name: pages_homepagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagerelatedlink_121087a8 ON pages_homepagerelatedlink USING btree (link_document_id);


--
-- Name: pages_homepagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagerelatedlink_1a63c800 ON pages_homepagerelatedlink USING btree (page_id);


--
-- Name: pages_homepagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_homepagerelatedlink_5b76e141 ON pages_homepagerelatedlink USING btree (link_page_id);


--
-- Name: pages_standardindexpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardindexpage_92482941 ON pages_standardindexpage USING btree (feed_image_id);


--
-- Name: pages_standardindexpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardindexpagerelatedlink_121087a8 ON pages_standardindexpagerelatedlink USING btree (link_document_id);


--
-- Name: pages_standardindexpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardindexpagerelatedlink_1a63c800 ON pages_standardindexpagerelatedlink USING btree (page_id);


--
-- Name: pages_standardindexpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardindexpagerelatedlink_5b76e141 ON pages_standardindexpagerelatedlink USING btree (link_page_id);


--
-- Name: pages_standardpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpage_92482941 ON pages_standardpage USING btree (feed_image_id);


--
-- Name: pages_standardpagecarouselitem_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagecarouselitem_121087a8 ON pages_standardpagecarouselitem USING btree (link_document_id);


--
-- Name: pages_standardpagecarouselitem_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagecarouselitem_1a63c800 ON pages_standardpagecarouselitem USING btree (page_id);


--
-- Name: pages_standardpagecarouselitem_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagecarouselitem_5b76e141 ON pages_standardpagecarouselitem USING btree (link_page_id);


--
-- Name: pages_standardpagecarouselitem_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagecarouselitem_f33175e6 ON pages_standardpagecarouselitem USING btree (image_id);


--
-- Name: pages_standardpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagerelatedlink_121087a8 ON pages_standardpagerelatedlink USING btree (link_document_id);


--
-- Name: pages_standardpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagerelatedlink_1a63c800 ON pages_standardpagerelatedlink USING btree (page_id);


--
-- Name: pages_standardpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_standardpagerelatedlink_5b76e141 ON pages_standardpagerelatedlink USING btree (link_page_id);


--
-- Name: pages_testimonial_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_testimonial_121087a8 ON pages_testimonial USING btree (link_document_id);


--
-- Name: pages_testimonial_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_testimonial_1a63c800 ON pages_testimonial USING btree (page_id);


--
-- Name: pages_testimonial_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_testimonial_5b76e141 ON pages_testimonial USING btree (link_page_id);


--
-- Name: pages_testimonial_b4e75e23; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX pages_testimonial_b4e75e23 ON pages_testimonial USING btree (photo_id);


--
-- Name: people_personindexpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personindexpagerelatedlink_121087a8 ON people_personindexpagerelatedlink USING btree (link_document_id);


--
-- Name: people_personindexpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personindexpagerelatedlink_1a63c800 ON people_personindexpagerelatedlink USING btree (page_id);


--
-- Name: people_personindexpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personindexpagerelatedlink_5b76e141 ON people_personindexpagerelatedlink USING btree (link_page_id);


--
-- Name: people_personpage_84566833; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpage_84566833 ON people_personpage USING btree (role_id);


--
-- Name: people_personpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpage_92482941 ON people_personpage USING btree (feed_image_id);


--
-- Name: people_personpage_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpage_f33175e6 ON people_personpage USING btree (image_id);


--
-- Name: people_personpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpagerelatedlink_121087a8 ON people_personpagerelatedlink USING btree (link_document_id);


--
-- Name: people_personpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpagerelatedlink_1a63c800 ON people_personpagerelatedlink USING btree (page_id);


--
-- Name: people_personpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpagerelatedlink_5b76e141 ON people_personpagerelatedlink USING btree (link_page_id);


--
-- Name: people_personpagetag_09a80f33; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpagetag_09a80f33 ON people_personpagetag USING btree (content_object_id);


--
-- Name: people_personpagetag_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX people_personpagetag_76f094bc ON people_personpagetag USING btree (tag_id);


--
-- Name: photo_gallery_galleryindexpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX photo_gallery_galleryindexpage_92482941 ON photo_gallery_galleryindexpage USING btree (feed_image_id);


--
-- Name: photo_gallery_gallerypage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX photo_gallery_gallerypage_92482941 ON photo_gallery_gallerypage USING btree (feed_image_id);


--
-- Name: photo_gallery_gallerypagetag_09a80f33; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX photo_gallery_gallerypagetag_09a80f33 ON photo_gallery_gallerypagetag USING btree (content_object_id);


--
-- Name: photo_gallery_gallerypagetag_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX photo_gallery_gallerypagetag_76f094bc ON photo_gallery_gallerypagetag USING btree (tag_id);


--
-- Name: products_productindexpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productindexpagerelatedlink_121087a8 ON products_productindexpagerelatedlink USING btree (link_document_id);


--
-- Name: products_productindexpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productindexpagerelatedlink_1a63c800 ON products_productindexpagerelatedlink USING btree (page_id);


--
-- Name: products_productindexpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productindexpagerelatedlink_5b76e141 ON products_productindexpagerelatedlink USING btree (link_page_id);


--
-- Name: products_productpage_92482941; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpage_92482941 ON products_productpage USING btree (feed_image_id);


--
-- Name: products_productpage_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpage_f33175e6 ON products_productpage USING btree (image_id);


--
-- Name: products_productpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpagerelatedlink_121087a8 ON products_productpagerelatedlink USING btree (link_document_id);


--
-- Name: products_productpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpagerelatedlink_1a63c800 ON products_productpagerelatedlink USING btree (page_id);


--
-- Name: products_productpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpagerelatedlink_5b76e141 ON products_productpagerelatedlink USING btree (link_page_id);


--
-- Name: products_productpagetag_09a80f33; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpagetag_09a80f33 ON products_productpagetag USING btree (content_object_id);


--
-- Name: products_productpagetag_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX products_productpagetag_76f094bc ON products_productpagetag USING btree (tag_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_417f1b1c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_taggeditem_417f1b1c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_76f094bc; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_taggeditem_76f094bc ON taggit_taggeditem USING btree (tag_id);


--
-- Name: taggit_taggeditem_af31437c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_taggeditem_af31437c ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_content_type_id_196cc965_idx; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX taggit_taggeditem_content_type_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_groupcollectionpermission_0a1a4dd8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_0a1a4dd8 ON wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_0e939a4f; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_0e939a4f ON wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_8373b171; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_8373b171 ON wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_0e939a4f; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_0e939a4f ON wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_1a63c800 ON wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_2dbcba41; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_2dbcba41 ON wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_417f1b1c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_417f1b1c ON wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_5e7b1936; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_5e7b1936 ON wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637_uniq; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637_uniq ON wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_1a63c800 ON wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_e8701ad4; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_e8701ad4 ON wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq ON wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pageviewrestriction_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_pageviewrestriction_1a63c800 ON wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_0897acf4; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_site_0897acf4 ON wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_8372b497; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_site_8372b497 ON wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtaildocs_document_0a1a4dd8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtaildocs_document_0a1a4dd8 ON wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_ef01e2b6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtaildocs_document_ef01e2b6 ON wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailforms_formsubmission_1a63c800 ON wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_0a1a4dd8; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailimages_image_0a1a4dd8 ON wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4_uniq; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4_uniq ON wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_ef01e2b6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailimages_image_ef01e2b6 ON wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_0a317463; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_0a317463 ON wagtailimages_rendition USING btree (filter_id);


--
-- Name: wagtailimages_rendition_f33175e6; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_f33175e6 ON wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_2fd79f37; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_2fd79f37 ON wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_9365d6e7 ON wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailsearch_editorspick_0bbeda9c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_0bbeda9c ON wagtailsearchpromotions_searchpromotion USING btree (query_id);


--
-- Name: wagtailsearch_editorspick_1a63c800; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_1a63c800 ON wagtailsearchpromotions_searchpromotion USING btree (page_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_0bbeda9c; Type: INDEX; Schema: public; Owner: puri; Tablespace: 
--

CREATE INDEX wagtailsearch_querydailyhits_0bbeda9c ON wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: D17c8edd4821aee444fb5a22b2e0a831; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentspagetag
    ADD CONSTRAINT "D17c8edd4821aee444fb5a22b2e0a831" FOREIGN KEY (content_object_id) REFERENCES documents_gallery_documentspage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_bl_content_object_id_0dc644d2_fk_blog_blogpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagetag
    ADD CONSTRAINT blog_bl_content_object_id_0dc644d2_fk_blog_blogpage_page_ptr_id FOREIGN KEY (content_object_id) REFERENCES blog_blogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogi_link_document_id_84c85fbf_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogindexpagerelatedlink
    ADD CONSTRAINT blog_blogi_link_document_id_84c85fbf_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogind_page_id_905f99b7_fk_blog_blogindexpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogindexpagerelatedlink
    ADD CONSTRAINT blog_blogind_page_id_905f99b7_fk_blog_blogindexpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES blog_blogindexpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogindexpage_link_page_id_fdd456c7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogindexpagerelatedlink
    ADD CONSTRAINT blog_blogindexpage_link_page_id_fdd456c7_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogindexpage_page_ptr_id_d87c3ac2_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogindexpage
    ADD CONSTRAINT blog_blogindexpage_page_ptr_id_d87c3ac2_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogp_link_document_id_358015f9_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagerelatedlink
    ADD CONSTRAINT blog_blogp_link_document_id_358015f9_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogp_link_document_id_944c5996_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagecarouselitem
    ADD CONSTRAINT blog_blogp_link_document_id_944c5996_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpage_feed_image_id_5f46dd6e_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpage
    ADD CONSTRAINT blog_blogpage_feed_image_id_5f46dd6e_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpage
    ADD CONSTRAINT blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagecaro_page_id_41128629_fk_blog_blogpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagecarouselitem
    ADD CONSTRAINT blog_blogpagecaro_page_id_41128629_fk_blog_blogpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES blog_blogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagecarou_link_page_id_86ebc051_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagecarouselitem
    ADD CONSTRAINT blog_blogpagecarou_link_page_id_86ebc051_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagecarous_image_id_d51a8744_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagecarouselitem
    ADD CONSTRAINT blog_blogpagecarous_image_id_d51a8744_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagerela_page_id_31c20323_fk_blog_blogpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagerelatedlink
    ADD CONSTRAINT blog_blogpagerela_page_id_31c20323_fk_blog_blogpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES blog_blogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagerelat_link_page_id_1edfe541_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagerelatedlink
    ADD CONSTRAINT blog_blogpagerelat_link_page_id_1edfe541_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagetag_tag_id_81dc0e5f_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY blog_blogpagetag
    ADD CONSTRAINT blog_blogpagetag_tag_id_81dc0e5f_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contact_con_page_id_95a7af80_fk_contact_contactpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_contactformfield
    ADD CONSTRAINT contact_con_page_id_95a7af80_fk_contact_contactpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES contact_contactpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_contactpage
    ADD CONSTRAINT contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contact_formfi_page_id_3ee48e6d_fk_contact_formpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_formfield
    ADD CONSTRAINT contact_formfi_page_id_3ee48e6d_fk_contact_formpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES contact_formpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contact_formpage_page_ptr_id_93c16e67_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY contact_formpage
    ADD CONSTRAINT contact_formpage_page_ptr_id_93c16e67_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_object_id_1985a884_fk_products_productpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagetag
    ADD CONSTRAINT content_object_id_1985a884_fk_products_productpage_page_ptr_id FOREIGN KEY (content_object_id) REFERENCES products_productpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_gall_feed_image_id_72f32dc7_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentspage
    ADD CONSTRAINT documents_gall_feed_image_id_72f32dc7_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_gall_feed_image_id_732ac53b_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentsindexpage
    ADD CONSTRAINT documents_gall_feed_image_id_732ac53b_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_gallery_d_page_ptr_id_ef81894a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentspage
    ADD CONSTRAINT documents_gallery_d_page_ptr_id_ef81894a_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_gallery_d_page_ptr_id_f7fa951f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentsindexpage
    ADD CONSTRAINT documents_gallery_d_page_ptr_id_f7fa951f_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_gallery_documentspag_tag_id_50625f82_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY documents_gallery_documentspagetag
    ADD CONSTRAINT documents_gallery_documentspag_tag_id_50625f82_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_ev_page_id_7ac7d364_fk_events_eventindexpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventindexpagerelatedlink
    ADD CONSTRAINT events_ev_page_id_7ac7d364_fk_events_eventindexpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES events_eventindexpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eve_link_document_id_0252ea0f_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagespeaker
    ADD CONSTRAINT events_eve_link_document_id_0252ea0f_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eve_link_document_id_85c089ab_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagecarouselitem
    ADD CONSTRAINT events_eve_link_document_id_85c089ab_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eve_link_document_id_bc602f32_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagerelatedlink
    ADD CONSTRAINT events_eve_link_document_id_bc602f32_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eve_link_document_id_f50895d4_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventindexpagerelatedlink
    ADD CONSTRAINT events_eve_link_document_id_f50895d4_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventindexp_link_page_id_4c88907b_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventindexpagerelatedlink
    ADD CONSTRAINT events_eventindexp_link_page_id_4c88907b_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventindexpa_page_ptr_id_d4ed8796_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventindexpage
    ADD CONSTRAINT events_eventindexpa_page_ptr_id_d4ed8796_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpa_feed_image_id_25a625d0_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpage
    ADD CONSTRAINT events_eventpa_feed_image_id_25a625d0_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpa_page_id_10883f65_fk_events_eventpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagespeaker
    ADD CONSTRAINT events_eventpa_page_id_10883f65_fk_events_eventpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES events_eventpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpa_page_id_2da96f87_fk_events_eventpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagerelatedlink
    ADD CONSTRAINT events_eventpa_page_id_2da96f87_fk_events_eventpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES events_eventpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpa_page_id_eec52587_fk_events_eventpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagecarouselitem
    ADD CONSTRAINT events_eventpa_page_id_eec52587_fk_events_eventpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES events_eventpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpage_page_ptr_id_c6701067_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpage
    ADD CONSTRAINT events_eventpage_page_ptr_id_c6701067_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpageca_link_page_id_388fd2d0_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagecarouselitem
    ADD CONSTRAINT events_eventpageca_link_page_id_388fd2d0_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpagecar_image_id_fb4b4dcd_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagecarouselitem
    ADD CONSTRAINT events_eventpagecar_image_id_fb4b4dcd_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpagere_link_page_id_378ea87f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagerelatedlink
    ADD CONSTRAINT events_eventpagere_link_page_id_378ea87f_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpagesp_link_page_id_f4549a64_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagespeaker
    ADD CONSTRAINT events_eventpagesp_link_page_id_f4549a64_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventpagespe_image_id_f48678eb_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY events_eventpagespeaker
    ADD CONSTRAINT events_eventpagespe_image_id_f48678eb_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: f30176145dc37361fd7bcfd229367ca4; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_gallerypagetag
    ADD CONSTRAINT f30176145dc37361fd7bcfd229367ca4 FOREIGN KEY (content_object_id) REFERENCES photo_gallery_gallerypage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_adve_link_document_id_d804b3dc_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_advert
    ADD CONSTRAINT pages_adve_link_document_id_d804b3dc_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_advert_image_id_c3df93a1_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_advert
    ADD CONSTRAINT pages_advert_image_id_c3df93a1_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_advert_link_page_id_ae00fe23_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_advert
    ADD CONSTRAINT pages_advert_link_page_id_ae00fe23_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_advert_page_id_21245cc0_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_advert
    ADD CONSTRAINT pages_advert_page_id_21245cc0_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_cont_link_document_id_0b825445_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_contentblock
    ADD CONSTRAINT pages_cont_link_document_id_0b825445_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_contentblock_link_page_id_84f7b516_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_contentblock
    ADD CONSTRAINT pages_contentblock_link_page_id_84f7b516_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_contentblock_page_id_d29244b9_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_contentblock
    ADD CONSTRAINT pages_contentblock_page_id_d29244b9_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_faqspage_page_ptr_id_15a8d513_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_faqspage
    ADD CONSTRAINT pages_faqspage_page_ptr_id_15a8d513_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_home_link_document_id_1364f817_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagerelatedlink
    ADD CONSTRAINT pages_home_link_document_id_1364f817_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_home_link_document_id_902c9e7d_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecarouselitem
    ADD CONSTRAINT pages_home_link_document_id_902c9e7d_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_home_link_document_id_a2552580_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecontentitem
    ADD CONSTRAINT pages_home_link_document_id_a2552580_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepage_page_ptr_id_5b805d74_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepage
    ADD CONSTRAINT pages_homepage_page_ptr_id_5b805d74_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepageca_page_id_915b43c4_fk_pages_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecarouselitem
    ADD CONSTRAINT pages_homepageca_page_id_915b43c4_fk_pages_homepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepagecaro_link_page_id_799b1594_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecarouselitem
    ADD CONSTRAINT pages_homepagecaro_link_page_id_799b1594_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepagecarou_image_id_45b3424e_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecarouselitem
    ADD CONSTRAINT pages_homepagecarou_image_id_45b3424e_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepageco_page_id_8b646417_fk_pages_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecontentitem
    ADD CONSTRAINT pages_homepageco_page_id_8b646417_fk_pages_homepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepagecont_link_page_id_9aa371ca_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecontentitem
    ADD CONSTRAINT pages_homepagecont_link_page_id_9aa371ca_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepageconte_image_id_85ec39f6_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagecontentitem
    ADD CONSTRAINT pages_homepageconte_image_id_85ec39f6_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepagere_page_id_b0a3517a_fk_pages_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagerelatedlink
    ADD CONSTRAINT pages_homepagere_page_id_b0a3517a_fk_pages_homepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_homepagerela_link_page_id_87ab8ff4_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_homepagerelatedlink
    ADD CONSTRAINT pages_homepagerela_link_page_id_87ab8ff4_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_s_page_id_d0df6fde_fk_pages_standardindexpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpagerelatedlink
    ADD CONSTRAINT pages_s_page_id_d0df6fde_fk_pages_standardindexpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_standardindexpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_stan_link_document_id_1e821170_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagecarouselitem
    ADD CONSTRAINT pages_stan_link_document_id_1e821170_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_stan_link_document_id_ab0a20f8_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpagerelatedlink
    ADD CONSTRAINT pages_stan_link_document_id_ab0a20f8_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_stan_link_document_id_c02096ae_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagerelatedlink
    ADD CONSTRAINT pages_stan_link_document_id_c02096ae_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standa_page_id_1c982abb_fk_pages_standardpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagerelatedlink
    ADD CONSTRAINT pages_standa_page_id_1c982abb_fk_pages_standardpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_standardpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standa_page_id_ab87f566_fk_pages_standardpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagecarouselitem
    ADD CONSTRAINT pages_standa_page_id_ab87f566_fk_pages_standardpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES pages_standardpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standard_feed_image_id_41c2eccd_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpage
    ADD CONSTRAINT pages_standard_feed_image_id_41c2eccd_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standard_feed_image_id_a65c3494_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpage
    ADD CONSTRAINT pages_standard_feed_image_id_a65c3494_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardinde_link_page_id_8ad61c91_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpagerelatedlink
    ADD CONSTRAINT pages_standardinde_link_page_id_8ad61c91_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardindex_page_ptr_id_70a0d3dc_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardindexpage
    ADD CONSTRAINT pages_standardindex_page_ptr_id_70a0d3dc_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardpage_link_page_id_28e4472a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagecarouselitem
    ADD CONSTRAINT pages_standardpage_link_page_id_28e4472a_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardpage_link_page_id_29341951_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagerelatedlink
    ADD CONSTRAINT pages_standardpage_link_page_id_29341951_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardpage_page_ptr_id_8d8149d9_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpage
    ADD CONSTRAINT pages_standardpage_page_ptr_id_8d8149d9_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_standardpagec_image_id_8d81528b_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_standardpagecarouselitem
    ADD CONSTRAINT pages_standardpagec_image_id_8d81528b_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_test_link_document_id_3c7b9377_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_testimonial
    ADD CONSTRAINT pages_test_link_document_id_3c7b9377_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_testimonial_link_page_id_70b58081_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_testimonial
    ADD CONSTRAINT pages_testimonial_link_page_id_70b58081_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_testimonial_page_id_aedaf53f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_testimonial
    ADD CONSTRAINT pages_testimonial_page_id_aedaf53f_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_testimonial_photo_id_29360729_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY pages_testimonial
    ADD CONSTRAINT pages_testimonial_photo_id_29360729_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: peo_content_object_id_219202ed_fk_people_personpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagetag
    ADD CONSTRAINT peo_content_object_id_219202ed_fk_people_personpage_page_ptr_id FOREIGN KEY (content_object_id) REFERENCES people_personpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_p_page_id_9074b56c_fk_people_personindexpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personindexpagerelatedlink
    ADD CONSTRAINT people_p_page_id_9074b56c_fk_people_personindexpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES people_personindexpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_per_link_document_id_6fb113f2_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personindexpagerelatedlink
    ADD CONSTRAINT people_per_link_document_id_6fb113f2_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_per_link_document_id_d330a140_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagerelatedlink
    ADD CONSTRAINT people_per_link_document_id_d330a140_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_person_page_id_37654932_fk_people_personpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagerelatedlink
    ADD CONSTRAINT people_person_page_id_37654932_fk_people_personpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES people_personpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personindex_link_page_id_9a45cdb2_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personindexpagerelatedlink
    ADD CONSTRAINT people_personindex_link_page_id_9a45cdb2_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personindexp_page_ptr_id_2aafa812_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personindexpage
    ADD CONSTRAINT people_personindexp_page_ptr_id_2aafa812_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personp_feed_image_id_c8aaeda0_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpage
    ADD CONSTRAINT people_personp_feed_image_id_c8aaeda0_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personpage_image_id_f13def2e_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpage
    ADD CONSTRAINT people_personpage_image_id_f13def2e_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personpage_page_ptr_id_0f038b98_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpage
    ADD CONSTRAINT people_personpage_page_ptr_id_0f038b98_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personpage_role_id_534a1c51_fk_people_personrole_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpage
    ADD CONSTRAINT people_personpage_role_id_534a1c51_fk_people_personrole_id FOREIGN KEY (role_id) REFERENCES people_personrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personpager_link_page_id_1f38718a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagerelatedlink
    ADD CONSTRAINT people_personpager_link_page_id_1f38718a_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: people_personpagetag_tag_id_e0d52d9d_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY people_personpagetag
    ADD CONSTRAINT people_personpagetag_tag_id_e0d52d9d_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_gallery__feed_image_id_2efaf002_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_gallerypage
    ADD CONSTRAINT photo_gallery__feed_image_id_2efaf002_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_gallery__feed_image_id_8fa24cf4_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_galleryindexpage
    ADD CONSTRAINT photo_gallery__feed_image_id_8fa24cf4_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_gallery_galle_page_ptr_id_11be90ff_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_gallerypage
    ADD CONSTRAINT photo_gallery_galle_page_ptr_id_11be90ff_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_gallery_galle_page_ptr_id_44a4f590_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_galleryindexpage
    ADD CONSTRAINT photo_gallery_galle_page_ptr_id_44a4f590_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_gallery_gallerypagetag_tag_id_61ab4280_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY photo_gallery_gallerypagetag
    ADD CONSTRAINT photo_gallery_gallerypagetag_tag_id_61ab4280_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produ_page_id_320a0204_fk_products_productindexpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productindexpagerelatedlink
    ADD CONSTRAINT produ_page_id_320a0204_fk_products_productindexpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES products_productindexpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_p_link_document_id_7589e588_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productindexpagerelatedlink
    ADD CONSTRAINT products_p_link_document_id_7589e588_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_p_link_document_id_d6cd7769_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagerelatedlink
    ADD CONSTRAINT products_p_link_document_id_d6cd7769_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_p_page_id_855d9c33_fk_products_productpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagerelatedlink
    ADD CONSTRAINT products_p_page_id_855d9c33_fk_products_productpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES products_productpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_produ_feed_image_id_fc5dc22b_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpage
    ADD CONSTRAINT products_produ_feed_image_id_fc5dc22b_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productin_link_page_id_cc9048a1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productindexpagerelatedlink
    ADD CONSTRAINT products_productin_link_page_id_cc9048a1_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productind_page_ptr_id_896e5596_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productindexpage
    ADD CONSTRAINT products_productind_page_ptr_id_896e5596_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productpa_link_page_id_39628d87_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagerelatedlink
    ADD CONSTRAINT products_productpa_link_page_id_39628d87_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productpag_image_id_b4d3829e_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpage
    ADD CONSTRAINT products_productpag_image_id_b4d3829e_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productpag_page_ptr_id_d4d9ff65_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpage
    ADD CONSTRAINT products_productpag_page_ptr_id_d4d9ff65_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productpagetag_tag_id_f0c81f66_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY products_productpagetag
    ADD CONSTRAINT products_productpagetag_tag_id_f0c81f66_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore__content_type_id_c28424df_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore__content_type_id_c28424df_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id FOREIGN KEY (filter_id) REFERENCES wagtailimages_filter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id FOREIGN KEY (redirect_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearchpromotions_searchpromotion
    ADD CONSTRAINT wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearchpromotions_page_id_71920f17_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailsearchpromotions_searchpromotion
    ADD CONSTRAINT wagtailsearchpromotions_page_id_71920f17_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: puri
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

