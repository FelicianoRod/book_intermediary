import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.g.dart';

@riverpod
String supabaseUrl(SupabaseUrlRef ref) {
  return 'https://gnxrsnsqicfvpoeymmpd.supabase.co';
}

@riverpod
String supabaseKey(SupabaseKeyRef ref) {
  return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdueHJzbnNxaWNmdnBvZXltbXBkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcxMTY0NjMsImV4cCI6MjA3MjY5MjQ2M30.S7A98H3da4yPjhoXf6ouEeGBhoS44PSRc3sTMzJF5Js';
}