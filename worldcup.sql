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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (95, 2018, 'Final', 182, 183, 4, 2);
INSERT INTO public.games VALUES (96, 2018, 'Third Place', 184, 185, 2, 0);
INSERT INTO public.games VALUES (97, 2018, 'Semi-Final', 183, 185, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Semi-Final', 182, 184, 1, 0);
INSERT INTO public.games VALUES (99, 2018, 'Quarter-Final', 183, 186, 3, 2);
INSERT INTO public.games VALUES (100, 2018, 'Quarter-Final', 185, 187, 2, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 184, 188, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 182, 189, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 185, 190, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 187, 191, 1, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 184, 192, 3, 2);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 188, 193, 2, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 183, 194, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 186, 195, 2, 1);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 189, 196, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 182, 197, 4, 3);
INSERT INTO public.games VALUES (111, 2014, 'Final', 198, 197, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Third Place', 199, 188, 3, 0);
INSERT INTO public.games VALUES (113, 2014, 'Semi-Final', 197, 199, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Semi-Final', 198, 188, 7, 1);
INSERT INTO public.games VALUES (115, 2014, 'Quarter-Final', 199, 200, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Quarter-Final', 197, 184, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 188, 190, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 198, 182, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 188, 201, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 190, 189, 2, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 182, 202, 2, 0);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 198, 203, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 199, 193, 2, 1);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 200, 204, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 197, 191, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 184, 205, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (182, 'France');
INSERT INTO public.teams VALUES (183, 'Croatia');
INSERT INTO public.teams VALUES (184, 'Belgium');
INSERT INTO public.teams VALUES (185, 'England');
INSERT INTO public.teams VALUES (186, 'Russia');
INSERT INTO public.teams VALUES (187, 'Sweden');
INSERT INTO public.teams VALUES (188, 'Brazil');
INSERT INTO public.teams VALUES (189, 'Uruguay');
INSERT INTO public.teams VALUES (190, 'Colombia');
INSERT INTO public.teams VALUES (191, 'Switzerland');
INSERT INTO public.teams VALUES (192, 'Japan');
INSERT INTO public.teams VALUES (193, 'Mexico');
INSERT INTO public.teams VALUES (194, 'Denmark');
INSERT INTO public.teams VALUES (195, 'Spain');
INSERT INTO public.teams VALUES (196, 'Portugal');
INSERT INTO public.teams VALUES (197, 'Argentina');
INSERT INTO public.teams VALUES (198, 'Germany');
INSERT INTO public.teams VALUES (199, 'Netherlands');
INSERT INTO public.teams VALUES (200, 'Costa Rica');
INSERT INTO public.teams VALUES (201, 'Chile');
INSERT INTO public.teams VALUES (202, 'Nigeria');
INSERT INTO public.teams VALUES (203, 'Algeria');
INSERT INTO public.teams VALUES (204, 'Greece');
INSERT INTO public.teams VALUES (205, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 205, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_team_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_name UNIQUE (name);


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

