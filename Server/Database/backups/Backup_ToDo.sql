PGDMP     &    #                y            ToDoEnsolvers    12.8    12.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    24576    ToDoEnsolvers    DATABASE     �   CREATE DATABASE "ToDoEnsolvers" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "ToDoEnsolvers";
                postgres    false            �            1259    24609    Folder    TABLE     �   CREATE TABLE public."Folder" (
    "idFolder" integer NOT NULL,
    name character varying(50),
    "folderCompleted" boolean,
    "idUser" integer NOT NULL
);
    DROP TABLE public."Folder";
       public         heap    postgres    false            �            1259    24607    Folder_idFolder_seq    SEQUENCE     �   CREATE SEQUENCE public."Folder_idFolder_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Folder_idFolder_seq";
       public          postgres    false    205            "           0    0    Folder_idFolder_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Folder_idFolder_seq" OWNED BY public."Folder"."idFolder";
          public          postgres    false    204            �            1259    24622    Item    TABLE     �   CREATE TABLE public."Item" (
    "idItem" integer NOT NULL,
    text text,
    "itemCompleted" boolean,
    "idFolder" integer NOT NULL,
    "itemName" character varying
);
    DROP TABLE public."Item";
       public         heap    postgres    false            �            1259    24620    Item_idItem_seq    SEQUENCE     �   CREATE SEQUENCE public."Item_idItem_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Item_idItem_seq";
       public          postgres    false    207            #           0    0    Item_idItem_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Item_idItem_seq" OWNED BY public."Item"."idItem";
          public          postgres    false    206            �            1259    24598    User    TABLE     �   CREATE TABLE public."User" (
    "idUser" integer NOT NULL,
    "userName" character varying(100),
    hash character varying,
    salt character varying
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    24596    User_idUser_seq    SEQUENCE     �   CREATE SEQUENCE public."User_idUser_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."User_idUser_seq";
       public          postgres    false    203            $           0    0    User_idUser_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."User_idUser_seq" OWNED BY public."User"."idUser";
          public          postgres    false    202            �
           2604    24612    Folder idFolder    DEFAULT     x   ALTER TABLE ONLY public."Folder" ALTER COLUMN "idFolder" SET DEFAULT nextval('public."Folder_idFolder_seq"'::regclass);
 B   ALTER TABLE public."Folder" ALTER COLUMN "idFolder" DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    24625    Item idItem    DEFAULT     p   ALTER TABLE ONLY public."Item" ALTER COLUMN "idItem" SET DEFAULT nextval('public."Item_idItem_seq"'::regclass);
 >   ALTER TABLE public."Item" ALTER COLUMN "idItem" DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    24601    User idUser    DEFAULT     p   ALTER TABLE ONLY public."User" ALTER COLUMN "idUser" SET DEFAULT nextval('public."User_idUser_seq"'::regclass);
 >   ALTER TABLE public."User" ALTER COLUMN "idUser" DROP DEFAULT;
       public          postgres    false    203    202    203                      0    24609    Folder 
   TABLE DATA           Q   COPY public."Folder" ("idFolder", name, "folderCompleted", "idUser") FROM stdin;
    public          postgres    false    205   N                 0    24622    Item 
   TABLE DATA           Y   COPY public."Item" ("idItem", text, "itemCompleted", "idFolder", "itemName") FROM stdin;
    public          postgres    false    207   k                 0    24598    User 
   TABLE DATA           B   COPY public."User" ("idUser", "userName", hash, salt) FROM stdin;
    public          postgres    false    203   �       %           0    0    Folder_idFolder_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Folder_idFolder_seq"', 28, true);
          public          postgres    false    204            &           0    0    Item_idItem_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Item_idItem_seq"', 84, true);
          public          postgres    false    206            '           0    0    User_idUser_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."User_idUser_seq"', 1, true);
          public          postgres    false    202            �
           2606    24614    Folder Folder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Folder"
    ADD CONSTRAINT "Folder_pkey" PRIMARY KEY ("idFolder");
 @   ALTER TABLE ONLY public."Folder" DROP CONSTRAINT "Folder_pkey";
       public            postgres    false    205            �
           2606    24630    Item Item_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY ("idItem");
 <   ALTER TABLE ONLY public."Item" DROP CONSTRAINT "Item_pkey";
       public            postgres    false    207            �
           2606    24606    User User_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("idUser");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    203            �
           2606    24615    Folder Folder_idUser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Folder"
    ADD CONSTRAINT "Folder_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES public."User"("idUser");
 G   ALTER TABLE ONLY public."Folder" DROP CONSTRAINT "Folder_idUser_fkey";
       public          postgres    false    205    203    2705            �
           2606    24636    Item Item_idFolder_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_idFolder_fkey" FOREIGN KEY ("idFolder") REFERENCES public."Folder"("idFolder") ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public."Item" DROP CONSTRAINT "Item_idFolder_fkey";
       public          postgres    false    207    205    2707                  x������ � �            x������ � �           x���n�@  г��I3+�zP*��Bhz��X(�t�����˃#�D���� ��*c�RB����P*a�cP�Xqc�$@� 0�8`H ��@��AF��-�����0�Q#�qM�U8|�4�
G\S5��3
g���ڤ[�ɮ8��IXVu�:�h]t�/�D�i�rW��Sy�&~_F��:̮�:;|6w�ę��e����]��'�)��E:�).�}�F���VL��ŏ얛?cR�P�������/{�J?u4U���[���b�     