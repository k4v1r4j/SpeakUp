PGDMP     $    9                 r            speakup    9.3.4    9.3.4     �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    16471    speakup    DATABASE     y   CREATE DATABASE speakup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE speakup;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    12338    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    175            �            1259    16485    comments    TABLE     �   CREATE TABLE comments (
    cid integer NOT NULL,
    post_id integer,
    comment text,
    username character varying(20),
    posted_on timestamp without time zone
);
    DROP TABLE public.comments;
       public         postgres    false    6            �            1259    16483    comments_cid_seq    SEQUENCE     r   CREATE SEQUENCE comments_cid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.comments_cid_seq;
       public       postgres    false    6    173            �	           0    0    comments_cid_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE comments_cid_seq OWNED BY comments.cid;
            public       postgres    false    172            �            1259    16474    entries    TABLE     �   CREATE TABLE entries (
    id integer NOT NULL,
    title text,
    content text,
    posted_on timestamp without time zone,
    username character varying(20)
);
    DROP TABLE public.entries;
       public         postgres    false    6            �            1259    16472    entries_id_seq    SEQUENCE     p   CREATE SEQUENCE entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.entries_id_seq;
       public       postgres    false    6    171            �	           0    0    entries_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE entries_id_seq OWNED BY entries.id;
            public       postgres    false    170            �            1259    16494    users    TABLE     W   CREATE TABLE users (
    username character varying(20) NOT NULL,
    password text
);
    DROP TABLE public.users;
       public         postgres    false    6            x	           2604    16488    cid    DEFAULT     ^   ALTER TABLE ONLY comments ALTER COLUMN cid SET DEFAULT nextval('comments_cid_seq'::regclass);
 ;   ALTER TABLE public.comments ALTER COLUMN cid DROP DEFAULT;
       public       postgres    false    173    172    173            w	           2604    16477    id    DEFAULT     Z   ALTER TABLE ONLY entries ALTER COLUMN id SET DEFAULT nextval('entries_id_seq'::regclass);
 9   ALTER TABLE public.entries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    170    171    171            �	          0    16485    comments 
   TABLE DATA               G   COPY comments (cid, post_id, comment, username, posted_on) FROM stdin;
    public       postgres    false    173   A       �	           0    0    comments_cid_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('comments_cid_seq', 1, true);
            public       postgres    false    172            �	          0    16474    entries 
   TABLE DATA               C   COPY entries (id, title, content, posted_on, username) FROM stdin;
    public       postgres    false    171   �       �	           0    0    entries_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('entries_id_seq', 1, true);
            public       postgres    false    170            �	          0    16494    users 
   TABLE DATA               ,   COPY users (username, password) FROM stdin;
    public       postgres    false    174   D       |	           2606    16493    comments_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (cid);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public         postgres    false    173    173            z	           2606    16482    entries_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.entries DROP CONSTRAINT entries_pkey;
       public         postgres    false    171    171            ~	           2606    16501 
   users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    174    174            �	   [   x���� �����;��,�6�h�N�{BBS\�6�[(���`�!�������o�E��ɰؖ]k0���<hq�c�f�����      �	   �  x�US�n�@����2dBrd�Q8Eu,$��%��"�{��+D� ���K2{���p:�����-&_�@���B��B߼�S�A��-{g�n`�O����0�!n[��P4����^lMǪ1vG��秿�Ҷ�:�z��r���a���(���;HK��Ph�:>?�(�5EG�	��eW� V�m��/H&P��Ke��q]
�<� �Ǳc����3P�"G���L��k2����8���R�@H���L׃#jW9�n�ݙ�U��o�իx�\a���H8���u��
��с!k�1�O�ٺ��)�����F������.�Lܚ8���0fj��ǳǩx�Ye�X�������u�Y�ҹ�΃s���|<&�rR�]Vsڲ�?�>��P�	s߄��Jti�h��U~Pݢ�HO;0��"[�z�]Ц/����@�!q�q��⼢�:�$�i+X���~��:��g �^�����	�NMm�7�A��3(P"����:��,2͑#��p`��9��<9ӿ�?ut���A�����y�oش-W1����y�X��C<o�x��@�eA�y�/O�[ ��yo��+�2v��G���by1������|uu���(.��7�����ˇ�}1�N�~П�      �	   >   x��6)3,2��4�LJI66ILJ4NK66HJ4H�420K4�45JI267H32KN4N����� �t     