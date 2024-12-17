--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying(25) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(25) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 4, 2, 887, 1002, 1003);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 0, 888, 1004, 1005);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 2, 1, 889, 1003, 1005);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 0, 890, 1002, 1004);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 3, 2, 891, 1003, 1006);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 892, 1005, 1007);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 1, 893, 1004, 1008);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 894, 1002, 1009);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 895, 1005, 1010);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 0, 896, 1007, 1011);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 2, 897, 1004, 1012);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 0, 898, 1008, 1013);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 899, 1003, 1014);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 900, 1006, 1015);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 901, 1009, 1016);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 4, 3, 902, 1002, 1017);
INSERT INTO public.games VALUES (2014, 'Final', 1, 0, 903, 1018, 1017);
INSERT INTO public.games VALUES (2014, 'Third Place', 3, 0, 904, 1019, 1008);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 0, 905, 1017, 1019);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 7, 1, 906, 1018, 1008);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 907, 1019, 1020);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 908, 1017, 1004);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 2, 1, 909, 1008, 1010);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 910, 1018, 1002);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 911, 1008, 1021);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 912, 1010, 1009);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 913, 1002, 1022);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 914, 1018, 1023);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 915, 1019, 1013);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 916, 1020, 1024);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 0, 917, 1017, 1011);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 918, 1004, 1025);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 1002);
INSERT INTO public.teams VALUES ('Croatia', 1003);
INSERT INTO public.teams VALUES ('Belgium', 1004);
INSERT INTO public.teams VALUES ('England', 1005);
INSERT INTO public.teams VALUES ('Russia', 1006);
INSERT INTO public.teams VALUES ('Sweden', 1007);
INSERT INTO public.teams VALUES ('Brazil', 1008);
INSERT INTO public.teams VALUES ('Uruguay', 1009);
INSERT INTO public.teams VALUES ('Colombia', 1010);
INSERT INTO public.teams VALUES ('Switzerland', 1011);
INSERT INTO public.teams VALUES ('Japan', 1012);
INSERT INTO public.teams VALUES ('Mexico', 1013);
INSERT INTO public.teams VALUES ('Denmark', 1014);
INSERT INTO public.teams VALUES ('Spain', 1015);
INSERT INTO public.teams VALUES ('Portugal', 1016);
INSERT INTO public.teams VALUES ('Argentina', 1017);
INSERT INTO public.teams VALUES ('Germany', 1018);
INSERT INTO public.teams VALUES ('Netherlands', 1019);
INSERT INTO public.teams VALUES ('Costa Rica', 1020);
INSERT INTO public.teams VALUES ('Chile', 1021);
INSERT INTO public.teams VALUES ('Nigeria', 1022);
INSERT INTO public.teams VALUES ('Algeria', 1023);
INSERT INTO public.teams VALUES ('Greece', 1024);
INSERT INTO public.teams VALUES ('United States', 1025);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 918, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1025, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

