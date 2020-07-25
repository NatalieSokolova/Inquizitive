DROP TABLE IF EXISTS quiz_responses CASCADE;
CREATE TABLE quiz_responses (
  id SERIAL PRIMARY KEY NOT NULL,
  quiz_id INTEGER NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
  taken_by_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  attempt_number INTEGER NOT NULL,
  started_at TIMESTAMP NOT NULL,
  ended_at TIMESTAMP NOT NULL,
  is_complete BOOLEAN NOT NULL DEFAULT false,
  share_link VARCHAR(255) NOT NULL
);