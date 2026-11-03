-- Justice League Academy shared leaderboard
-- Run this entire script in Supabase Dashboard > SQL Editor.
create table if not exists public.cadet_profiles (
  user_id uuid primary key references auth.users(id) on delete cascade,
  display_name text not null default 'Cadet' check (char_length(display_name) between 1 and 32),
  rank_name text not null default 'Recruit',
  completed_courses integer not null default 0 check (completed_courses >= 0),
  training_hours numeric(8,1) not null default 0 check (training_hours >= 0),
  updated_at timestamptz not null default now()
);
alter table public.cadet_profiles enable row level security;
drop policy if exists "Signed-in cadets can view leaderboard" on public.cadet_profiles;
create policy "Signed-in cadets can view leaderboard" on public.cadet_profiles
  for select to authenticated using (true);
drop policy if exists "Cadets can create their own profile" on public.cadet_profiles;
create policy "Cadets can create their own profile" on public.cadet_profiles
  for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Cadets can update their own profile" on public.cadet_profiles;
create policy "Cadets can update their own profile" on public.cadet_profiles
  for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
revoke all on public.cadet_profiles from anon;
grant select, insert, update on public.cadet_profiles to authenticated;
