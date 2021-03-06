PGDMP     2                    y           ntp_sms_final    13.3    13.3 ?    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    24735    ntp_sms_final    DATABASE     i   CREATE DATABASE ntp_sms_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE ntp_sms_final;
                postgres    false            ?            1259    24736    advert_type    TABLE     H  CREATE TABLE public.advert_type (
    id integer NOT NULL,
    code character(8) NOT NULL,
    name character varying(50) NOT NULL,
    daily_credit real NOT NULL,
    allows_random real NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL,
    version integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.advert_type;
       public         heap    postgres    false            ?            1259    24744    bundle    TABLE     ?   CREATE TABLE public.bundle (
    id integer NOT NULL,
    system_id integer NOT NULL,
    credit real NOT NULL,
    amount real NOT NULL,
    created_at timestamp without time zone NOT NULL
);
    DROP TABLE public.bundle;
       public         heap    postgres    false            ?            1259    24747    city    TABLE     ?   CREATE TABLE public.city (
    id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying(155) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            ?            1259    24751    client    TABLE     2  CREATE TABLE public.client (
    id integer NOT NULL,
    code character(8) NOT NULL,
    name character varying(30) NOT NULL,
    telephone character varying(15) NOT NULL,
    email character varying(25) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.client;
       public         heap    postgres    false            ?            1259    24755    consumption    TABLE       CREATE TABLE public.consumption (
    id integer NOT NULL,
    system_id integer NOT NULL,
    period date NOT NULL,
    credit numeric(10,0) NOT NULL,
    sms integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    last_update timestamp without time zone
);
    DROP TABLE public.consumption;
       public         heap    postgres    false            ?            1259    24758    contact    TABLE     |  CREATE TABLE public.contact (
    id bigint NOT NULL,
    system_id integer NOT NULL,
    created_by integer NOT NULL,
    city_id integer,
    gender_id integer,
    code character(8) NOT NULL,
    name character varying(50) NOT NULL,
    phone_number character varying(16) NOT NULL,
    email character varying(100) DEFAULT NULL::character varying,
    website character varying(100) DEFAULT NULL::character varying,
    address text,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL,
    locked real DEFAULT 0 NOT NULL,
    bought real DEFAULT 0 NOT NULL,
    shared real DEFAULT 0 NOT NULL
);
    DROP TABLE public.contact;
       public         heap    postgres    false            ?            1259    24770    contact_group    TABLE     ~   CREATE TABLE public.contact_group (
    id integer NOT NULL,
    group_id integer NOT NULL,
    contact_id bigint NOT NULL
);
 !   DROP TABLE public.contact_group;
       public         heap    postgres    false            ?            1259    24773    contact_option    TABLE     ?   CREATE TABLE public.contact_option (
    id integer NOT NULL,
    system_id integer NOT NULL,
    share_contact real DEFAULT 1 NOT NULL,
    share_group real DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.contact_option;
       public         heap    postgres    false            ?            1259    24778    contact_sharing    TABLE     g  CREATE TABLE public.contact_sharing (
    id integer NOT NULL,
    system_id integer NOT NULL,
    code character(8) NOT NULL,
    name character varying(50) NOT NULL,
    status real DEFAULT 1 NOT NULL,
    running real DEFAULT 0 NOT NULL,
    seen_by integer DEFAULT 0,
    bough_by integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.contact_sharing;
       public         heap    postgres    false            ?            1259    24785    contact_sharing_item    TABLE     ?   CREATE TABLE public.contact_sharing_item (
    id integer NOT NULL,
    contact_sharing_id integer NOT NULL,
    contact_id bigint NOT NULL
);
 (   DROP TABLE public.contact_sharing_item;
       public         heap    postgres    false            ?            1259    24788    country    TABLE     [  CREATE TABLE public.country (
    id integer NOT NULL,
    code character varying(5) NOT NULL,
    name character varying(100) NOT NULL,
    prefix character varying(5) NOT NULL,
    flag character varying(5) NOT NULL,
    status real DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    version real DEFAULT 1 NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            ?            1259    24793    credit_history    TABLE     ?  CREATE TABLE public.credit_history (
    id integer NOT NULL,
    system_id integer NOT NULL,
    credit double precision NOT NULL,
    amount double precision NOT NULL,
    buy_date timestamp without time zone NOT NULL,
    normal_buy real DEFAULT 0 NOT NULL,
    paypal_buy real DEFAULT 0 NOT NULL,
    credit_card_buy real DEFAULT 0 NOT NULL,
    mobile_money_buy real DEFAULT 0 NOT NULL,
    paid real DEFAULT 0 NOT NULL,
    pay_date timestamp without time zone
);
 "   DROP TABLE public.credit_history;
       public         heap    postgres    false            ?            1259    24801    gender    TABLE     ?   CREATE TABLE public.gender (
    id integer NOT NULL,
    code character varying(45) DEFAULT NULL::character varying,
    name character varying(45) DEFAULT NULL::character varying,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.gender;
       public         heap    postgres    false            ?            1259    24807    groups    TABLE     c  CREATE TABLE public.groups (
    id integer NOT NULL,
    system_id integer NOT NULL,
    created_by integer NOT NULL,
    code character(8) NOT NULL,
    name character varying(50) NOT NULL,
    bought real DEFAULT 0 NOT NULL,
    shared real DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            ?            1259    24813    licence    TABLE     ?  CREATE TABLE public.licence (
    id integer NOT NULL,
    code character(8) NOT NULL,
    system_id integer NOT NULL,
    licence_type_id integer NOT NULL,
    sold_price double precision NOT NULL,
    bough_price double precision NOT NULL,
    created_by integer NOT NULL,
    enabled real DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    expire_at timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.licence;
       public         heap    postgres    false            ?            1259    24818    licence_renewal    TABLE     ?   CREATE TABLE public.licence_renewal (
    id integer NOT NULL,
    licence_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    created_by integer NOT NULL
);
 #   DROP TABLE public.licence_renewal;
       public         heap    postgres    false            ?            1259    24821    licence_type    TABLE     ?  CREATE TABLE public.licence_type (
    id integer NOT NULL,
    logo character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    amount double precision NOT NULL,
    duration integer DEFAULT 0 NOT NULL,
    customizable_name real DEFAULT 0 NOT NULL,
    schedule_enabled real DEFAULT 0 NOT NULL,
    group_limit integer DEFAULT 5 NOT NULL,
    group_contact_limit integer NOT NULL,
    country_limit text NOT NULL,
    status real DEFAULT 1 NOT NULL
);
     DROP TABLE public.licence_type;
       public         heap    postgres    false            ?            1259    24832    module    TABLE     ?  CREATE TABLE public.module (
    id integer NOT NULL,
    code character varying(45) DEFAULT NULL::character varying,
    name character varying(45) DEFAULT NULL::character varying,
    icon character varying(45) DEFAULT NULL::character varying,
    cdate timestamp without time zone NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    edate timestamp without time zone,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.module;
       public         heap    postgres    false            ?            1259    24847    page    TABLE     M  CREATE TABLE public.page (
    id integer NOT NULL,
    name character varying(45) DEFAULT NULL::character varying,
    display_name character varying(45) DEFAULT NULL::character varying,
    url character varying(45) DEFAULT NULL::character varying,
    icon character varying(45) DEFAULT NULL::character varying,
    module_id integer NOT NULL,
    cdate timestamp without time zone NOT NULL,
    status real DEFAULT 1 NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    has_child real DEFAULT 0 NOT NULL,
    parent_id integer NOT NULL,
    side_navigation real DEFAULT 1 NOT NULL
);
    DROP TABLE public.page;
       public         heap    postgres    false            ?            1259    24840    parameter_type    TABLE       CREATE TABLE public.parameter_type (
    id integer NOT NULL,
    code character varying(45) DEFAULT NULL::character varying,
    name character varying(45) DEFAULT NULL::character varying,
    possible_children real DEFAULT 0 NOT NULL,
    status real DEFAULT 1 NOT NULL
);
 "   DROP TABLE public.parameter_type;
       public         heap    postgres    false            ?            1259    24932    password_history    TABLE     ?   CREATE TABLE public.password_history (
    id integer NOT NULL,
    user_id integer NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.password_history;
       public         heap    postgres    false            ?            1259    24935    role    TABLE     ?  CREATE TABLE public.role (
    id integer NOT NULL,
    code character varying(45) DEFAULT NULL::character varying,
    name character varying(45) DEFAULT NULL::character varying,
    status real DEFAULT 1,
    version integer DEFAULT 1 NOT NULL,
    system_id integer,
    default_action character varying(50) DEFAULT NULL::character varying,
    master real DEFAULT 0 NOT NULL,
    description text,
    user_id integer
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    24929 	   role_page    TABLE     ^   CREATE TABLE public.role_page (
    role_id integer NOT NULL,
    page_id integer NOT NULL
);
    DROP TABLE public.role_page;
       public         heap    postgres    false            ?            1259    24926    role_system_page    TABLE     ?   CREATE TABLE public.role_system_page (
    id integer NOT NULL,
    role_id integer NOT NULL,
    system_page_id integer NOT NULL
);
 $   DROP TABLE public.role_system_page;
       public         heap    postgres    false            ?            1259    24980    sms    TABLE     1  CREATE TABLE public.sms (
    id bigint NOT NULL,
    system_id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    response_code integer,
    campaign character varying(50) DEFAULT NULL::character varying,
    used_credit double precision,
    sms_count integer,
    sms_content text,
    response_date timestamp without time zone,
    request_date timestamp without time zone,
    sms_type real DEFAULT 1 NOT NULL,
    simple_date date,
    sent real DEFAULT 0 NOT NULL,
    format real DEFAULT 1 NOT NULL
);
    DROP TABLE public.sms;
       public         heap    postgres    false            ?            1259    24947 
   sms_asking    TABLE     j  CREATE TABLE public.sms_asking (
    id integer NOT NULL,
    system_id integer NOT NULL,
    credit integer NOT NULL,
    reason text NOT NULL,
    status real DEFAULT 0 NOT NULL,
    asked_by integer NOT NULL,
    supported_by integer,
    created_at timestamp without time zone NOT NULL,
    supported_at timestamp without time zone,
    support_note text
);
    DROP TABLE public.sms_asking;
       public         heap    postgres    false            ?            1259    24954    sms_package    TABLE     +  CREATE TABLE public.sms_package (
    id integer NOT NULL,
    code character(8) NOT NULL,
    bundle integer NOT NULL,
    amount double precision NOT NULL,
    created_at timestamp without time zone NOT NULL,
    created_from character varying(100) NOT NULL,
    status real DEFAULT 1 NOT NULL
);
    DROP TABLE public.sms_package;
       public         heap    postgres    false            ?            1259    24922    sms_parameter    TABLE       CREATE TABLE public.sms_parameter (
    id integer NOT NULL,
    country_id integer NOT NULL,
    amount_per_sms double precision NOT NULL,
    credit_per_sms double precision NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 1
);
 !   DROP TABLE public.sms_parameter;
       public         heap    postgres    false            ?            1259    24991    system    TABLE       CREATE TABLE public.system (
    id integer NOT NULL,
    system_type_id integer NOT NULL,
    creater_id integer,
    country_id integer DEFAULT 1 NOT NULL,
    code character(8) NOT NULL,
    short_name character varying(15) DEFAULT NULL::character varying,
    long_name character varying(255) NOT NULL,
    logo character varying(45) DEFAULT NULL::character varying,
    description text,
    auth_number character varying(45) DEFAULT NULL::character varying,
    creation_date timestamp without time zone,
    enabled real DEFAULT 0 NOT NULL,
    status real DEFAULT 1 NOT NULL,
    active_time integer DEFAULT 0 NOT NULL,
    activation_date timestamp without time zone,
    version integer DEFAULT 1 NOT NULL,
    editer_id integer,
    last_edition timestamp without time zone
);
    DROP TABLE public.system;
       public         heap    postgres    false            ?            1259    24919    system_page    TABLE     {   CREATE TABLE public.system_page (
    id integer NOT NULL,
    system_id integer NOT NULL,
    page_id integer NOT NULL
);
    DROP TABLE public.system_page;
       public         heap    postgres    false            ?            1259    24958    system_preference    TABLE     ?  CREATE TABLE public.system_preference (
    id integer NOT NULL,
    system_id integer NOT NULL,
    group_limit integer NOT NULL,
    group_contact_limit integer NOT NULL,
    schedule_enabled real DEFAULT 0 NOT NULL,
    custom_name character varying(50) NOT NULL,
    max_sms integer DEFAULT 1 NOT NULL,
    shared_option real DEFAULT 0 NOT NULL,
    recipient real DEFAULT 0 NOT NULL,
    api_computer_address character varying(100) DEFAULT NULL::character varying,
    sms_discount double precision
);
 %   DROP TABLE public.system_preference;
       public         heap    postgres    false            ?            1259    24909    system_type    TABLE     F  CREATE TABLE public.system_type (
    id integer NOT NULL,
    code character varying(45) DEFAULT NULL::character varying,
    name character varying(45) DEFAULT NULL::character varying,
    description text,
    cdate timestamp without time zone,
    version integer DEFAULT 1 NOT NULL,
    status real DEFAULT 0 NOT NULL
);
    DROP TABLE public.system_type;
       public         heap    postgres    false            ?            1259    24966    system_type_parameter    TABLE     ?  CREATE TABLE public.system_type_parameter (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) DEFAULT NULL::character varying,
    parameter_type_id integer NOT NULL,
    system_type_id integer NOT NULL,
    is_printable real DEFAULT 1 NOT NULL,
    is_parent real DEFAULT 0 NOT NULL,
    "position" integer DEFAULT 1 NOT NULL,
    enabled_table real DEFAULT 1 NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    edition_date timestamp without time zone,
    creator_id integer NOT NULL,
    editor_id integer,
    version real DEFAULT 1 NOT NULL,
    status real DEFAULT 1 NOT NULL,
    is_required real DEFAULT 1 NOT NULL
);
 )   DROP TABLE public.system_type_parameter;
       public         heap    postgres    false            ?            1259    24902    system_type_parameter_child    TABLE       CREATE TABLE public.system_type_parameter_child (
    id integer NOT NULL,
    system_type_parameter_id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    status real DEFAULT 1,
    "position" integer
);
 /   DROP TABLE public.system_type_parameter_child;
       public         heap    postgres    false            ?            1259    24896    system_type_parameter_value    TABLE     ?   CREATE TABLE public.system_type_parameter_value (
    id integer NOT NULL,
    system_type_parameter_id integer NOT NULL,
    system_id integer NOT NULL,
    value text
);
 /   DROP TABLE public.system_type_parameter_value;
       public         heap    postgres    false            ?            1259    24889    temp_sms    TABLE     .  CREATE TABLE public.temp_sms (
    id bigint NOT NULL,
    system_id integer NOT NULL,
    phone_number character varying(15) NOT NULL,
    message text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    status real DEFAULT 0 NOT NULL,
    unique_key character varying(100) NOT NULL
);
    DROP TABLE public.temp_sms;
       public         heap    postgres    false            ?            1259    24871 	   user_role    TABLE     w   CREATE TABLE public.user_role (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            ?            1259    24874    usere    TABLE     ?  CREATE TABLE public.usere (
    id integer NOT NULL,
    name character varying(45) DEFAULT NULL::character varying,
    lastname character varying(45) DEFAULT NULL::character varying,
    login character varying(45) DEFAULT NULL::character varying,
    password character varying(45) DEFAULT NULL::character varying,
    equivalent text,
    enabled real DEFAULT 1,
    status real DEFAULT 1,
    cdate timestamp without time zone NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    email character varying(45) NOT NULL,
    telephone character varying(45) NOT NULL,
    system_id integer,
    is_system real DEFAULT 0 NOT NULL,
    gender_id integer,
    is_online real DEFAULT 0 NOT NULL
);
    DROP TABLE public.usere;
       public         heap    postgres    false            ?            1259    32927    vw_api_user_information    TABLE       CREATE TABLE public.vw_api_user_information (
    customname character varying(50),
    licencekey character varying(100),
    apikey character(8),
    systemid integer,
    password character varying(255),
    issystem real,
    userid integer,
    credit double precision
);
 +   DROP TABLE public.vw_api_user_information;
       public         heap    postgres    false            ?            1259    32930    vw_basic_credit_history    TABLE     	  CREATE TABLE public.vw_basic_credit_history (
    sid integer,
    sname character varying(15),
    lname character varying(255),
    h_id integer,
    amount double precision,
    credit double precision,
    buy_date timestamp without time zone,
    paid real
);
 +   DROP TABLE public.vw_basic_credit_history;
       public         heap    postgres    false            ?            1259    32933    vw_bundle_list    TABLE     ?   CREATE TABLE public.vw_bundle_list (
    sname character varying(15),
    lname character varying(255),
    id integer,
    credit double precision,
    amount double precision,
    cdate timestamp without time zone
);
 "   DROP TABLE public.vw_bundle_list;
       public         heap    postgres    false            ?            1259    32936     vw_children_page_list_for_system    TABLE     ?  CREATE TABLE public.vw_children_page_list_for_system (
    id integer,
    name character varying(45),
    display_name character varying(45),
    url character varying(45),
    icon character varying(45),
    module_id integer,
    cdate timestamp without time zone,
    status real,
    version integer,
    has_child real,
    parent_id integer,
    side_navigation real,
    system_id integer
);
 4   DROP TABLE public.vw_children_page_list_for_system;
       public         heap    postgres    false            3          0    24736    advert_type 
   TABLE DATA           o   COPY public.advert_type (id, code, name, daily_credit, allows_random, created_at, status, version) FROM stdin;
    public          postgres    false    200   \?       4          0    24744    bundle 
   TABLE DATA           K   COPY public.bundle (id, system_id, credit, amount, created_at) FROM stdin;
    public          postgres    false    201   y?       5          0    24747    city 
   TABLE DATA           H   COPY public.city (id, country_id, name, created_at, status) FROM stdin;
    public          postgres    false    202   ??       6          0    24751    client 
   TABLE DATA           V   COPY public.client (id, code, name, telephone, email, created_at, status) FROM stdin;
    public          postgres    false    203   ??       7          0    24755    consumption 
   TABLE DATA           b   COPY public.consumption (id, system_id, period, credit, sms, created_at, last_update) FROM stdin;
    public          postgres    false    204   ??       8          0    24758    contact 
   TABLE DATA           ?   COPY public.contact (id, system_id, created_by, city_id, gender_id, code, name, phone_number, email, website, address, created_at, status, locked, bought, shared) FROM stdin;
    public          postgres    false    205   ??       9          0    24770    contact_group 
   TABLE DATA           A   COPY public.contact_group (id, group_id, contact_id) FROM stdin;
    public          postgres    false    206   
?       :          0    24773    contact_option 
   TABLE DATA           _   COPY public.contact_option (id, system_id, share_contact, share_group, created_at) FROM stdin;
    public          postgres    false    207   '?       ;          0    24778    contact_sharing 
   TABLE DATA           t   COPY public.contact_sharing (id, system_id, code, name, status, running, seen_by, bough_by, created_at) FROM stdin;
    public          postgres    false    208   D?       <          0    24785    contact_sharing_item 
   TABLE DATA           R   COPY public.contact_sharing_item (id, contact_sharing_id, contact_id) FROM stdin;
    public          postgres    false    209   a?       =          0    24788    country 
   TABLE DATA           \   COPY public.country (id, code, name, prefix, flag, status, created_at, version) FROM stdin;
    public          postgres    false    210   ~?       >          0    24793    credit_history 
   TABLE DATA           ?   COPY public.credit_history (id, system_id, credit, amount, buy_date, normal_buy, paypal_buy, credit_card_buy, mobile_money_buy, paid, pay_date) FROM stdin;
    public          postgres    false    211   ??       ?          0    24801    gender 
   TABLE DATA           8   COPY public.gender (id, code, name, status) FROM stdin;
    public          postgres    false    212   ??       @          0    24807    groups 
   TABLE DATA           k   COPY public.groups (id, system_id, created_by, code, name, bought, shared, created_at, status) FROM stdin;
    public          postgres    false    213   ??       A          0    24813    licence 
   TABLE DATA           ?   COPY public.licence (id, code, system_id, licence_type_id, sold_price, bough_price, created_by, enabled, created_at, expire_at, status) FROM stdin;
    public          postgres    false    214   ??       B          0    24818    licence_renewal 
   TABLE DATA           Q   COPY public.licence_renewal (id, licence_id, created_at, created_by) FROM stdin;
    public          postgres    false    215   ?       C          0    24821    licence_type 
   TABLE DATA           ?   COPY public.licence_type (id, logo, name, description, amount, duration, customizable_name, schedule_enabled, group_limit, group_contact_limit, country_limit, status) FROM stdin;
    public          postgres    false    216   ,?       D          0    24832    module 
   TABLE DATA           U   COPY public.module (id, code, name, icon, cdate, version, edate, status) FROM stdin;
    public          postgres    false    217   I?       F          0    24847    page 
   TABLE DATA           ?   COPY public.page (id, name, display_name, url, icon, module_id, cdate, status, version, has_child, parent_id, side_navigation) FROM stdin;
    public          postgres    false    219   f?       E          0    24840    parameter_type 
   TABLE DATA           S   COPY public.parameter_type (id, code, name, possible_children, status) FROM stdin;
    public          postgres    false    218   ??       Q          0    24932    password_history 
   TABLE DATA           M   COPY public.password_history (id, user_id, password, created_at) FROM stdin;
    public          postgres    false    230   ??       R          0    24935    role 
   TABLE DATA           x   COPY public.role (id, code, name, status, version, system_id, default_action, master, description, user_id) FROM stdin;
    public          postgres    false    231   ??       P          0    24929 	   role_page 
   TABLE DATA           5   COPY public.role_page (role_id, page_id) FROM stdin;
    public          postgres    false    229   ??       O          0    24926    role_system_page 
   TABLE DATA           G   COPY public.role_system_page (id, role_id, system_page_id) FROM stdin;
    public          postgres    false    228   ??       W          0    24980    sms 
   TABLE DATA           ?   COPY public.sms (id, system_id, message, created_at, response_code, campaign, used_credit, sms_count, sms_content, response_date, request_date, sms_type, simple_date, sent, format) FROM stdin;
    public          postgres    false    236          S          0    24947 
   sms_asking 
   TABLE DATA           ?   COPY public.sms_asking (id, system_id, credit, reason, status, asked_by, supported_by, created_at, supported_at, support_note) FROM stdin;
    public          postgres    false    232   1       T          0    24954    sms_package 
   TABLE DATA           a   COPY public.sms_package (id, code, bundle, amount, created_at, created_from, status) FROM stdin;
    public          postgres    false    233   N       N          0    24922    sms_parameter 
   TABLE DATA           k   COPY public.sms_parameter (id, country_id, amount_per_sms, credit_per_sms, created_at, status) FROM stdin;
    public          postgres    false    227   k       X          0    24991    system 
   TABLE DATA           ?   COPY public.system (id, system_type_id, creater_id, country_id, code, short_name, long_name, logo, description, auth_number, creation_date, enabled, status, active_time, activation_date, version, editer_id, last_edition) FROM stdin;
    public          postgres    false    237   ?       M          0    24919    system_page 
   TABLE DATA           =   COPY public.system_page (id, system_id, page_id) FROM stdin;
    public          postgres    false    226   ?       U          0    24958    system_preference 
   TABLE DATA           ?   COPY public.system_preference (id, system_id, group_limit, group_contact_limit, schedule_enabled, custom_name, max_sms, shared_option, recipient, api_computer_address, sms_discount) FROM stdin;
    public          postgres    false    234   ?       L          0    24909    system_type 
   TABLE DATA           Z   COPY public.system_type (id, code, name, description, cdate, version, status) FROM stdin;
    public          postgres    false    225   ?       V          0    24966    system_type_parameter 
   TABLE DATA           ?   COPY public.system_type_parameter (id, name, display_name, parameter_type_id, system_type_id, is_printable, is_parent, "position", enabled_table, creation_date, edition_date, creator_id, editor_id, version, status, is_required) FROM stdin;
    public          postgres    false    235   ?       K          0    24902    system_type_parameter_child 
   TABLE DATA           {   COPY public.system_type_parameter_child (id, system_type_parameter_id, name, display_name, status, "position") FROM stdin;
    public          postgres    false    224         J          0    24896    system_type_parameter_value 
   TABLE DATA           e   COPY public.system_type_parameter_value (id, system_type_parameter_id, system_id, value) FROM stdin;
    public          postgres    false    223   6      I          0    24889    temp_sms 
   TABLE DATA           h   COPY public.temp_sms (id, system_id, phone_number, message, created_at, status, unique_key) FROM stdin;
    public          postgres    false    222   S      G          0    24871 	   user_role 
   TABLE DATA           9   COPY public.user_role (id, user_id, role_id) FROM stdin;
    public          postgres    false    220   p      H          0    24874    usere 
   TABLE DATA           ?   COPY public.usere (id, name, lastname, login, password, equivalent, enabled, status, cdate, version, email, telephone, system_id, is_system, gender_id, is_online) FROM stdin;
    public          postgres    false    221   ?      Y          0    32927    vw_api_user_information 
   TABLE DATA              COPY public.vw_api_user_information (customname, licencekey, apikey, systemid, password, issystem, userid, credit) FROM stdin;
    public          postgres    false    238   ?      Z          0    32930    vw_basic_credit_history 
   TABLE DATA           j   COPY public.vw_basic_credit_history (sid, sname, lname, h_id, amount, credit, buy_date, paid) FROM stdin;
    public          postgres    false    239   ?      [          0    32933    vw_bundle_list 
   TABLE DATA           Q   COPY public.vw_bundle_list (sname, lname, id, credit, amount, cdate) FROM stdin;
    public          postgres    false    240   ?      \          0    32936     vw_children_page_list_for_system 
   TABLE DATA           ?   COPY public.vw_children_page_list_for_system (id, name, display_name, url, icon, module_id, cdate, status, version, has_child, parent_id, side_navigation, system_id) FROM stdin;
    public          postgres    false    241         9           2606    25008    bundle bundle_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bundle
    ADD CONSTRAINT bundle_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bundle DROP CONSTRAINT bundle_pkey;
       public            postgres    false    201            ;           2606    25010    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    202            =           2606    25012    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    203            ?           2606    25014    consumption consumption_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.consumption
    ADD CONSTRAINT consumption_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.consumption DROP CONSTRAINT consumption_pkey;
       public            postgres    false    204            C           2606    25018     contact_group contact_group_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.contact_group
    ADD CONSTRAINT contact_group_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.contact_group DROP CONSTRAINT contact_group_pkey;
       public            postgres    false    206            E           2606    25020 "   contact_option contact_option_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.contact_option
    ADD CONSTRAINT contact_option_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.contact_option DROP CONSTRAINT contact_option_pkey;
       public            postgres    false    207            A           2606    25016    contact contact_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    205            I           2606    25024 .   contact_sharing_item contact_sharing_item_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_sharing_item
    ADD CONSTRAINT contact_sharing_item_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_sharing_item DROP CONSTRAINT contact_sharing_item_pkey;
       public            postgres    false    209            G           2606    25022 $   contact_sharing contact_sharing_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.contact_sharing
    ADD CONSTRAINT contact_sharing_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.contact_sharing DROP CONSTRAINT contact_sharing_pkey;
       public            postgres    false    208            K           2606    25026    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    210            M           2606    25028 "   credit_history credit_history_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.credit_history
    ADD CONSTRAINT credit_history_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.credit_history DROP CONSTRAINT credit_history_pkey;
       public            postgres    false    211            O           2606    25030    gender gender_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.gender DROP CONSTRAINT gender_pkey;
       public            postgres    false    212            Q           2606    25032    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    213            7           2606    25006    advert_type id 
   CONSTRAINT     L   ALTER TABLE ONLY public.advert_type
    ADD CONSTRAINT id PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.advert_type DROP CONSTRAINT id;
       public            postgres    false    200            k           2606    25211    system_page id  
   CONSTRAINT     O   ALTER TABLE ONLY public.system_page
    ADD CONSTRAINT "id " PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.system_page DROP CONSTRAINT "id ";
       public            postgres    false    226            S           2606    25034    licence licence_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.licence
    ADD CONSTRAINT licence_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.licence DROP CONSTRAINT licence_pkey;
       public            postgres    false    214            U           2606    25036 $   licence_renewal licence_renewal_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.licence_renewal
    ADD CONSTRAINT licence_renewal_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.licence_renewal DROP CONSTRAINT licence_renewal_pkey;
       public            postgres    false    215            W           2606    25038    licence_type licence_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.licence_type
    ADD CONSTRAINT licence_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.licence_type DROP CONSTRAINT licence_type_pkey;
       public            postgres    false    216            Y           2606    25040    module module_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public            postgres    false    217            ]           2606    25042    page page_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.page DROP CONSTRAINT page_pkey;
       public            postgres    false    219            [           2606    25044 "   parameter_type parameter_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.parameter_type
    ADD CONSTRAINT parameter_type_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.parameter_type DROP CONSTRAINT parameter_type_pkey;
       public            postgres    false    218            q           2606    25046 &   password_history password_history_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT password_history_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.password_history DROP CONSTRAINT password_history_pkey;
       public            postgres    false    230            s           2606    25048    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    231            o           2606    25050 &   role_system_page role_system_page_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.role_system_page
    ADD CONSTRAINT role_system_page_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.role_system_page DROP CONSTRAINT role_system_page_pkey;
       public            postgres    false    228            u           2606    25054    sms_asking sms_asking_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sms_asking
    ADD CONSTRAINT sms_asking_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sms_asking DROP CONSTRAINT sms_asking_pkey;
       public            postgres    false    232            w           2606    25056    sms_package sms_package_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sms_package
    ADD CONSTRAINT sms_package_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sms_package DROP CONSTRAINT sms_package_pkey;
       public            postgres    false    233            m           2606    25058     sms_parameter sms_parameter_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sms_parameter
    ADD CONSTRAINT sms_parameter_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sms_parameter DROP CONSTRAINT sms_parameter_pkey;
       public            postgres    false    227            {           2606    25052    sms sms_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.sms
    ADD CONSTRAINT sms_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.sms DROP CONSTRAINT sms_pkey;
       public            postgres    false    236            }           2606    25060    system system_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.system DROP CONSTRAINT system_pkey;
       public            postgres    false    237            g           2606    25066 <   system_type_parameter_child system_type_parameter_child_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.system_type_parameter_child
    ADD CONSTRAINT system_type_parameter_child_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.system_type_parameter_child DROP CONSTRAINT system_type_parameter_child_pkey;
       public            postgres    false    224            y           2606    25064 0   system_type_parameter system_type_parameter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.system_type_parameter
    ADD CONSTRAINT system_type_parameter_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.system_type_parameter DROP CONSTRAINT system_type_parameter_pkey;
       public            postgres    false    235            e           2606    25068 <   system_type_parameter_value system_type_parameter_value_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.system_type_parameter_value
    ADD CONSTRAINT system_type_parameter_value_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.system_type_parameter_value DROP CONSTRAINT system_type_parameter_value_pkey;
       public            postgres    false    223            i           2606    25062    system_type system_type_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.system_type
    ADD CONSTRAINT system_type_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.system_type DROP CONSTRAINT system_type_pkey;
       public            postgres    false    225            c           2606    25070    temp_sms temp_sms_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.temp_sms
    ADD CONSTRAINT temp_sms_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.temp_sms DROP CONSTRAINT temp_sms_pkey;
       public            postgres    false    222            _           2606    25072    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    220            a           2606    25074    usere usere_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.usere
    ADD CONSTRAINT usere_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.usere DROP CONSTRAINT usere_pkey;
       public            postgres    false    221            ~           2606    25075    bundle bundle_system_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.bundle
    ADD CONSTRAINT bundle_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 A   ALTER TABLE ONLY public.bundle DROP CONSTRAINT bundle_system_fk;
       public          postgres    false    3197    201    237                       2606    25080    city city_country_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_fk FOREIGN KEY (country_id) REFERENCES public.country(id);
 >   ALTER TABLE ONLY public.city DROP CONSTRAINT city_country_fk;
       public          postgres    false    3147    210    202            ?           2606    25090    contact contact_city_fk    FK CONSTRAINT     u   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_city_fk FOREIGN KEY (city_id) REFERENCES public.city(id);
 A   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_city_fk;
       public          postgres    false    3131    205    202            ?           2606    25095    contact contact_created_by_fk    FK CONSTRAINT        ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_created_by_fk FOREIGN KEY (created_by) REFERENCES public.usere(id);
 G   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_created_by_fk;
       public          postgres    false    3169    205    221            ?           2606    25100    contact contact_gender_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_gender_fk FOREIGN KEY (gender_id) REFERENCES public.gender(id);
 C   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_gender_fk;
       public          postgres    false    205    212    3151            ?           2606    25110 "   contact_group contact_group_ibfk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_group
    ADD CONSTRAINT contact_group_ibfk_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.contact_group DROP CONSTRAINT contact_group_ibfk_1;
       public          postgres    false    206    3137    205            ?           2606    25145    groups contact_group_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT contact_group_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 H   ALTER TABLE ONLY public.groups DROP CONSTRAINT contact_group_system_fk;
       public          postgres    false    3197    213    237            ?           2606    25150    groups contact_group_user_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT contact_group_user_fk FOREIGN KEY (created_by) REFERENCES public.usere(id);
 F   ALTER TABLE ONLY public.groups DROP CONSTRAINT contact_group_user_fk;
       public          postgres    false    213    221    3169            ?           2606    25120 '   contact_option contact_option_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_option
    ADD CONSTRAINT contact_option_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 Q   ALTER TABLE ONLY public.contact_option DROP CONSTRAINT contact_option_system_fk;
       public          postgres    false    3197    207    237            ?           2606    25130 0   contact_sharing_item contact_sharing_item_ibfk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_sharing_item
    ADD CONSTRAINT contact_sharing_item_ibfk_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 Z   ALTER TABLE ONLY public.contact_sharing_item DROP CONSTRAINT contact_sharing_item_ibfk_1;
       public          postgres    false    3137    209    205            ?           2606    25135 .   contact_sharing_item contact_sharing_parent_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_sharing_item
    ADD CONSTRAINT contact_sharing_parent_fk FOREIGN KEY (contact_sharing_id) REFERENCES public.contact_sharing(id);
 X   ALTER TABLE ONLY public.contact_sharing_item DROP CONSTRAINT contact_sharing_parent_fk;
       public          postgres    false    3143    209    208            ?           2606    25125 )   contact_sharing contact_sharing_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_sharing
    ADD CONSTRAINT contact_sharing_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 S   ALTER TABLE ONLY public.contact_sharing DROP CONSTRAINT contact_sharing_system_fk;
       public          postgres    false    3197    208    237            ?           2606    25105    contact contact_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_system_fk;
       public          postgres    false    3197    205    237            ?           2606    25140 '   credit_history credit_history_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.credit_history
    ADD CONSTRAINT credit_history_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 Q   ALTER TABLE ONLY public.credit_history DROP CONSTRAINT credit_history_system_fk;
       public          postgres    false    3197    211    237            ?           2606    25302 6   system_type_parameter_child fk_child_system_type_param    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter_child
    ADD CONSTRAINT fk_child_system_type_param FOREIGN KEY (system_type_parameter_id) REFERENCES public.system_type_parameter(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.system_type_parameter_child DROP CONSTRAINT fk_child_system_type_param;
       public          postgres    false    224    3193    235            ?           2606    25155    licence fk_licence_creater    FK CONSTRAINT     |   ALTER TABLE ONLY public.licence
    ADD CONSTRAINT fk_licence_creater FOREIGN KEY (created_by) REFERENCES public.usere(id);
 D   ALTER TABLE ONLY public.licence DROP CONSTRAINT fk_licence_creater;
       public          postgres    false    3169    214    221            ?           2606    25160    licence fk_licence_system    FK CONSTRAINT     {   ALTER TABLE ONLY public.licence
    ADD CONSTRAINT fk_licence_system FOREIGN KEY (system_id) REFERENCES public.system(id);
 C   ALTER TABLE ONLY public.licence DROP CONSTRAINT fk_licence_system;
       public          postgres    false    3197    237    214            ?           2606    25165    licence fk_licence_type    FK CONSTRAINT     ?   ALTER TABLE ONLY public.licence
    ADD CONSTRAINT fk_licence_type FOREIGN KEY (licence_type_id) REFERENCES public.licence_type(id);
 A   ALTER TABLE ONLY public.licence DROP CONSTRAINT fk_licence_type;
       public          postgres    false    3159    214    216            ?           2606    25242 "   sms_parameter fk_sms_param_country    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sms_parameter
    ADD CONSTRAINT fk_sms_param_country FOREIGN KEY (country_id) REFERENCES public.country(id);
 L   ALTER TABLE ONLY public.sms_parameter DROP CONSTRAINT fk_sms_param_country;
       public          postgres    false    3147    210    227            ?           2606    25085 !   consumption fk_system_consumption    FK CONSTRAINT     ?   ALTER TABLE ONLY public.consumption
    ADD CONSTRAINT fk_system_consumption FOREIGN KEY (system_id) REFERENCES public.system(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.consumption DROP CONSTRAINT fk_system_consumption;
       public          postgres    false    3197    204    237            ?           2606    25257    system fk_system_country    FK CONSTRAINT     |   ALTER TABLE ONLY public.system
    ADD CONSTRAINT fk_system_country FOREIGN KEY (country_id) REFERENCES public.country(id);
 B   ALTER TABLE ONLY public.system DROP CONSTRAINT fk_system_country;
       public          postgres    false    3147    237    210            ?           2606    25115 $   contact_group group_contact_group_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_group
    ADD CONSTRAINT group_contact_group_fk FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.contact_group DROP CONSTRAINT group_contact_group_fk;
       public          postgres    false    213    3153    206            ?           2606    25170 *   licence_renewal licence_renewal_licence_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.licence_renewal
    ADD CONSTRAINT licence_renewal_licence_fk FOREIGN KEY (licence_id) REFERENCES public.licence(id);
 T   ALTER TABLE ONLY public.licence_renewal DROP CONSTRAINT licence_renewal_licence_fk;
       public          postgres    false    3155    215    214            ?           2606    25175 '   licence_renewal licence_renewal_user_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.licence_renewal
    ADD CONSTRAINT licence_renewal_user_fk FOREIGN KEY (created_by) REFERENCES public.usere(id);
 Q   ALTER TABLE ONLY public.licence_renewal DROP CONSTRAINT licence_renewal_user_fk;
       public          postgres    false    3169    215    221            ?           2606    25180    page page_module_fk    FK CONSTRAINT     u   ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_module_fk FOREIGN KEY (module_id) REFERENCES public.module(id);
 =   ALTER TABLE ONLY public.page DROP CONSTRAINT page_module_fk;
       public          postgres    false    3161    219    217            ?           2606    25185    role role_creater_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_creater_fk FOREIGN KEY (user_id) REFERENCES public.usere(id);
 >   ALTER TABLE ONLY public.role DROP CONSTRAINT role_creater_fk;
       public          postgres    false    3169    231    221            ?           2606    25195    role_page role_page_page_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_page
    ADD CONSTRAINT role_page_page_fk FOREIGN KEY (page_id) REFERENCES public.page(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.role_page DROP CONSTRAINT role_page_page_fk;
       public          postgres    false    229    219    3165            ?           2606    25200    role_page role_page_role_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_page
    ADD CONSTRAINT role_page_role_fk FOREIGN KEY (role_id) REFERENCES public.role(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.role_page DROP CONSTRAINT role_page_role_fk;
       public          postgres    false    3187    229    231            ?           2606    25190    role role_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.role DROP CONSTRAINT role_system_fk;
       public          postgres    false    3197    231    237            ?           2606    25212 )   role_system_page role_system_page_role_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_system_page
    ADD CONSTRAINT role_system_page_role_fk FOREIGN KEY (role_id) REFERENCES public.role(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.role_system_page DROP CONSTRAINT role_system_page_role_fk;
       public          postgres    false    228    3187    231            ?           2606    25217 ,   role_system_page role_system_page_syspage_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_system_page
    ADD CONSTRAINT role_system_page_syspage_fk FOREIGN KEY (system_page_id) REFERENCES public.system_page(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.role_system_page DROP CONSTRAINT role_system_page_syspage_fk;
       public          postgres    false    3179    228    226            ?           2606    25227 "   sms_asking sms_asking_requester_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sms_asking
    ADD CONSTRAINT sms_asking_requester_fk FOREIGN KEY (asked_by) REFERENCES public.usere(id);
 L   ALTER TABLE ONLY public.sms_asking DROP CONSTRAINT sms_asking_requester_fk;
       public          postgres    false    3169    232    221            ?           2606    25232 "   sms_asking sms_asking_supporter_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sms_asking
    ADD CONSTRAINT sms_asking_supporter_fk FOREIGN KEY (supported_by) REFERENCES public.usere(id);
 L   ALTER TABLE ONLY public.sms_asking DROP CONSTRAINT sms_asking_supporter_fk;
       public          postgres    false    3169    232    221            ?           2606    25237    sms_asking sms_asking_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sms_asking
    ADD CONSTRAINT sms_asking_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 I   ALTER TABLE ONLY public.sms_asking DROP CONSTRAINT sms_asking_system_fk;
       public          postgres    false    237    3197    232            ?           2606    25222    sms sms_system_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public.sms
    ADD CONSTRAINT sms_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 ;   ALTER TABLE ONLY public.sms DROP CONSTRAINT sms_system_fk;
       public          postgres    false    3197    236    237            ?           2606    25282 &   system_type_parameter sysparam_creator    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter
    ADD CONSTRAINT sysparam_creator FOREIGN KEY (creator_id) REFERENCES public.user_role(id);
 P   ALTER TABLE ONLY public.system_type_parameter DROP CONSTRAINT sysparam_creator;
       public          postgres    false    3167    235    220            ?           2606    25287 %   system_type_parameter sysparam_editor    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter
    ADD CONSTRAINT sysparam_editor FOREIGN KEY (editor_id) REFERENCES public.user_role(id);
 O   ALTER TABLE ONLY public.system_type_parameter DROP CONSTRAINT sysparam_editor;
       public          postgres    false    3167    220    235            ?           2606    25292 (   system_type_parameter sysparam_paramtype    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter
    ADD CONSTRAINT sysparam_paramtype FOREIGN KEY (parameter_type_id) REFERENCES public.parameter_type(id);
 R   ALTER TABLE ONLY public.system_type_parameter DROP CONSTRAINT sysparam_paramtype;
       public          postgres    false    218    3163    235            ?           2606    25297 &   system_type_parameter sysparam_systype    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter
    ADD CONSTRAINT sysparam_systype FOREIGN KEY (system_type_id) REFERENCES public.system_type(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.system_type_parameter DROP CONSTRAINT sysparam_systype;
       public          postgres    false    3177    225    235            ?           2606    25307 0   system_type_parameter_value sysparamval_sysparam    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter_value
    ADD CONSTRAINT sysparamval_sysparam FOREIGN KEY (system_type_parameter_id) REFERENCES public.system_type_parameter(id);
 Z   ALTER TABLE ONLY public.system_type_parameter_value DROP CONSTRAINT sysparamval_sysparam;
       public          postgres    false    223    235    3193            ?           2606    25312 .   system_type_parameter_value sysparamval_system    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_type_parameter_value
    ADD CONSTRAINT sysparamval_system FOREIGN KEY (system_id) REFERENCES public.system(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.system_type_parameter_value DROP CONSTRAINT sysparamval_system;
       public          postgres    false    3197    237    223            ?           2606    25262    system system_creater_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_creater_fk FOREIGN KEY (creater_id) REFERENCES public.user_role(id);
 B   ALTER TABLE ONLY public.system DROP CONSTRAINT system_creater_fk;
       public          postgres    false    237    3167    220            ?           2606    25267    system system_editer_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_editer_fk FOREIGN KEY (editer_id) REFERENCES public.user_role(id) ON DELETE SET NULL;
 A   ALTER TABLE ONLY public.system DROP CONSTRAINT system_editer_fk;
       public          postgres    false    3167    237    220            ?           2606    25247    system_page system_page_page    FK CONSTRAINT     z   ALTER TABLE ONLY public.system_page
    ADD CONSTRAINT system_page_page FOREIGN KEY (page_id) REFERENCES public.page(id);
 F   ALTER TABLE ONLY public.system_page DROP CONSTRAINT system_page_page;
       public          postgres    false    3165    226    219            ?           2606    25252    system_page system_page_system    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_page
    ADD CONSTRAINT system_page_system FOREIGN KEY (system_id) REFERENCES public.system(id);
 H   ALTER TABLE ONLY public.system_page DROP CONSTRAINT system_page_system;
       public          postgres    false    237    3197    226            ?           2606    25277 .   system_preference system_preferences_system_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_preference
    ADD CONSTRAINT system_preferences_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.system_preference DROP CONSTRAINT system_preferences_system_fk;
       public          postgres    false    3197    237    234            ?           2606    25272    system system_system_type_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_system_type_fk FOREIGN KEY (system_type_id) REFERENCES public.system_type(id);
 F   ALTER TABLE ONLY public.system DROP CONSTRAINT system_system_type_fk;
       public          postgres    false    3177    225    237            ?           2606    25317    usere user_gender_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usere
    ADD CONSTRAINT user_gender_fk FOREIGN KEY (gender_id) REFERENCES public.gender(id) ON DELETE SET NULL;
 >   ALTER TABLE ONLY public.usere DROP CONSTRAINT user_gender_fk;
       public          postgres    false    221    212    3151            ?           2606    25327    user_role user_role_role_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_role_fk FOREIGN KEY (role_id) REFERENCES public.role(id);
 E   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_role_fk;
       public          postgres    false    231    3187    220            ?           2606    25332    user_role user_role_user_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_user_fk FOREIGN KEY (user_id) REFERENCES public.usere(id);
 E   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_user_fk;
       public          postgres    false    221    3169    220            ?           2606    25322    usere user_system_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.usere
    ADD CONSTRAINT user_system_fk FOREIGN KEY (system_id) REFERENCES public.system(id);
 >   ALTER TABLE ONLY public.usere DROP CONSTRAINT user_system_fk;
       public          postgres    false    221    237    3197            3      x?????? ? ?      4      x?????? ? ?      5      x?????? ? ?      6      x?????? ? ?      7      x?????? ? ?      8      x?????? ? ?      9      x?????? ? ?      :      x?????? ? ?      ;      x?????? ? ?      <      x?????? ? ?      =      x?????? ? ?      >      x?????? ? ?      ?      x?????? ? ?      @      x?????? ? ?      A      x?????? ? ?      B      x?????? ? ?      C      x?????? ? ?      D      x?????? ? ?      F      x?????? ? ?      E      x?????? ? ?      Q      x?????? ? ?      R      x?????? ? ?      P      x?????? ? ?      O      x?????? ? ?      W      x?????? ? ?      S      x?????? ? ?      T      x?????? ? ?      N      x?????? ? ?      X      x?????? ? ?      M      x?????? ? ?      U      x?????? ? ?      L      x?????? ? ?      V      x?????? ? ?      K      x?????? ? ?      J      x?????? ? ?      I      x?????? ? ?      G      x?????? ? ?      H      x?????? ? ?      Y      x?????? ? ?      Z      x?????? ? ?      [      x?????? ? ?      \      x?????? ? ?     