alter table tracks
    alter column link1_text type timestamptz using link1_text::timestamptz,
    alter column link2_text type timestamptz using link2_text::timestamptz;


