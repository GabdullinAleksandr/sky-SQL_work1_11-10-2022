PGDMP     "                 	    z            sky-SQL_work_1    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    sky-SQL_work_1    DATABASE     m   CREATE DATABASE "sky-SQL_work_1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
     DROP DATABASE "sky-SQL_work_1";
                postgres    false            �            1259    16405    abs    TABLE     �   CREATE TABLE public.abs (
    id integer NOT NULL,
    name character(50) NOT NULL,
    fk_author integer NOT NULL,
    price money NOT NULL,
    description character(300),
    fk_address integer NOT NULL,
    is_published boolean NOT NULL
);
    DROP TABLE public.abs;
       public         heap    postgres    false            �            1259    16402    address    TABLE     �   CREATE TABLE public.address (
    id_address integer NOT NULL,
    address_sity character(100) NOT NULL,
    address_metr character(100) NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16399    author    TABLE     b   CREATE TABLE public.author (
    id_author integer NOT NULL,
    author character(50) NOT NULL
);
    DROP TABLE public.author;
       public         heap    postgres    false            �          0    16405    abs 
   TABLE DATA           `   COPY public.abs (id, name, fk_author, price, description, fk_address, is_published) FROM stdin;
    public          postgres    false    211   �       �          0    16402    address 
   TABLE DATA           I   COPY public.address (id_address, address_sity, address_metr) FROM stdin;
    public          postgres    false    210   �       �          0    16399    author 
   TABLE DATA           3   COPY public.author (id_author, author) FROM stdin;
    public          postgres    false    209   �       h           2606    16409    abs abs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT abs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.abs DROP CONSTRAINT abs_pkey;
       public            postgres    false    211            f           2606    16411    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id_address);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    210            d           2606    16413    author author_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id_author);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    209            i           2606    16419    abs key_address    FK CONSTRAINT     �   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT key_address FOREIGN KEY (fk_address) REFERENCES public.address(id_address) NOT VALID;
 9   ALTER TABLE ONLY public.abs DROP CONSTRAINT key_address;
       public          postgres    false    211    3174    210            j           2606    16424    abs key_author    FK CONSTRAINT     �   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT key_author FOREIGN KEY (fk_author) REFERENCES public.author(id_author) NOT VALID;
 8   ALTER TABLE ONLY public.abs DROP CONSTRAINT key_author;
       public          postgres    false    209    3172    211            �   �  x��Z�n�]���yg�E��ܛ ?�M���	`؛F��4X�-ȱ:F���N�dI�Uf�,A�/��	����j���p�L��p�s�=�a���'�Y�[�v>�ő���b�8*v�A˭�<��b[>?��W�7��N���_��b+��H�{�d��I�W�����9·��@��Y��}�^�����|^�$�y���Ɉ����q�s�*�p��ɠs,@���/��X&��2��-����\�1|������<Ũ���(�̊������!��&�ɺ�Ł\/���5l��X�6+e��ty��[} OL/a��A&s8&{�"�1W/��pFnF޸��[���e��(/��+]��6�iG�R����[��J��Ro߻b�����e�pM$��,�!��g�N�Db'Cxиs�]�}6�ȑ�����_aC�Ñ�.�'�zRxQb���\���`Q܋Q��3�i�#�ە�$�-r3'��E7�r�ٕk�}İ�ԧ��'y]q��&r"�y(Ł��x=��#賷���~���Np�x��}��xQ�"�@�c �W��ߚ�2Ș�7pK�j��e'r��|��z�+XO��)��F���s�C������A���u����)�t����Yf�`]�ك73�*Ɠ���!	�EI���k-��� 4���|N��	���g�u��N��cb��+艻6�_���o�_�����߉�~�;���?ݹ�g���{w.����*۞���y���L�L��GNrm,	9q��Ȼ9l�hz>=%���1]�٧�i��@���K������Sd��H�A����k�n\\2}�a�l�Wob��(��X�LH)�)�)��-#uk)�.�/P}�O���,���)a΅ܑ�r�*�a���T��V��ɒ�&#���\F���`�y׎��J����0Q��B{����6	������
n��7��6gݍuK}T/����MI��VIǪ��zd��ѩ,o�#=-u�z���/A��Hؐc�� ��8����AU1ZN!&-�t��s�?��"���FUB����=��<3�vH/�š]ӂU��X���"4AG�����1���|�C$��:�0�]��ڥEz���ȸ�S6W�|B42��d�lb,rn_�"a���1��iߗrC�6U#b�H��Np�bۙEej��6���f:҈�X$dN3H6%�n�EX�>f�b�W��h-��Cx����:�M>�A��!kg7�*�N�����"�8�?/Ò�L�{���b��	�P[k M�D%��a��@��ji���b����Ό��y)V�ɪ�p�[�}���g���|�$^��R�<%�>z��i�3�&h��j��U ����YZb�Z�������93����&W�֘���-9�ԙ�#JK�(Z�X��%��.����m"���Ud<)����
���Lq|J B ��ճ��U��>���r��u��\�]N��z$e��9��dZ
�RX���T�8��i8J*Ym�#�zS��U�NJY���0�4��셚�#<C���eJ502P��@.�^�]s��e����
T��(��º`��j�J�Ƒy[5�����Ơ�Ы0Dl����/���M�-��)�%�%:�ME(Db���_��B��^���j!K�8E0]m�
�2��i�k�u2�	�,A�~���C+�D�,*��OoI��b~Vm���O@oKk]�@0<���V���.o;{�5��~�H�.`���S�mUgW��jٖ3�tնf�
C.x,�����R�M�V7EV2��=-�C�w�6&TP ���!2�L�z�VN(.��žl�v�u����8fd@XM���`�F��^��aUl[��
���3��:Bjn�&�c `k0^�T�,U�,=e�-�i_;���|�)&YV�	<?�rv��&���� <����������c��-gg!�Z\q0��4L	�wd3�p���dP���<h��v;ݮJ����2c�ǄB��~s��x\�x���߾w�,�����[��<@�o��.~!4��'���Q��>�k2�Xd�p�xA��aoRk��4�Y�ա������ �1�z\�B�����詙%��u�wg�����/a������)Sb"FK���H���\[T=�'�������M!��_�N�h̆+� @rP��S���:�����,�&8Sځ�I��ذU��nـ/ﻍ�s��[�f_^�!4��f ̽�Mh�m�>iO�G�F���j�ԉ�w̚���i�c�erB��1�,��jBC=�i����ѷ��(�ގ�/X���K탑�R��+}�
.�!�I��1��U���g�9�H�s�2�v�����1��=�[�Q�"��8����ˤJ�u�^R3���}��aYY���������tc�J�/aOm�L|w*_(����'���z��r;S-�����y A'��f���x �qVꪲ��֫ ���t�d��������֩X�n�GF��=b�nfNʆ�s�RQ��&z���0��Wa�� m�"�;���Sp-�7{��Ǆ\�L5�S�It��j`���v0؞\Rii�y2��k�J�S���S��_1|�_R��+!���j^[��^h���N� ��㭡�ݼ�'::��ʴ�^ﵔg�@,T"lT�n?˫����s2�
�e[���sJJ%I�g�(v��˨�5}����W7;U,(�����+���5"�VbP�j�3�h.���ޔ[ ���8$x^ʀ��3�{"���T��S�<��p����q�P��;.��2��-��g���0��2���jTmX0�K$��*�Ґ^8;�?(�I�&錈2�@�Q����P��F��m��J�Sl����y����k艪~��z��h1���\�
����j�g�v87�U��ع��r���[/7/ױ(hg�sW��y����T	�,H�K� vl��؇L��u�@:��d�@��ە�핕��R�C,      �     x��Mn�0���)|�R����а(H��)b�6�DE��on�K�J]Ɖ4��g���3�]�=Jy�)�u��� ��pF�B>��ډ�|(�P7ި}�#��Ի�%R�xc�x� $(p��1��Z�$+��1�Ț��s�~������7�z43�Y:׍�Ѝ���\�|�$;�F[V/vEg��U�������l�<�u��tʦ&f\�T4�񿃠1KpJ�g���,�y�t3�^�f5��'��'���ys��pv���St�~�1jy�Ƙ;N�L�      �   f   x����	�0���d�N x��aj7P���P(;��F�#$�?�IO�� �8��@8�,��M�H�Q�#�fC'¡`U6I�`�yn��̛P��R�ս&Qӵc���UN     