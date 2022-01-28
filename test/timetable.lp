% -------- FACTS --------
% patient(ID,AUT,MIN)
% - ID: id - ID of the patient
% - AUT: autonomous - Indicates if the patient is autonomous
% - MIN: minSessionLength - Minimum time in TU that the patient should spend in all the sessions
patient(53, 1, 5 ).
patient(60, 1, 4 ).
patient(75, 1, 6 ).
patient(86, 1, 4 ).
patient(3 , 1, 6 ).
patient(19, 1, 6 ).
patient(13, 1, 4 ).
patient(14, 1, 2 ).
patient(70, 1, 6 ).
patient(21, 1, -1).
patient(58, 1, 5 ).
patient(15, 1, 2 ).
patient(64, 1, 5 ).
patient(17, 1, 6 ).
patient(35, 1, 4 ).
patient(39, 1, 5 ).
patient(90, 0, 6 ).
patient(26, 0, 6 ).
patient(28, 1, 0 ).
patient(2 , 0, 6 ).
patient(20, 1, 4 ).
patient(65, 1, 5 ).
patient(54, 1, 6 ).
patient(49, 0, 5 ).
patient(62, 1, 3 ).
patient(89, 1, 0 ).
patient(48, 1, 2 ).
patient(63, 1, 6 ).
patient(71, 0, 5 ).
patient(80, 1, 6 ).
patient(12, 1, 5 ).
patient(29, 1, 5 ).
patient(34, 1, 6 ).
patient(50, 1, 4 ).
patient(76, 1, 6 ).
patient(40, 1, 6 ).
patient(8 , 1, 5 ).
patient(32, 1, 0 ).
patient(52, 1, 4 ).
patient(74, 1, 6 ).
patient(81, 1, 4 ).
patient(41, 0, 1 ).
patient(22, 1, 5 ).
patient(88, 1, 4 ).
patient(38, 1, 4 ).
patient(68, 1, 6 ).
patient(82, 1, 6 ).
patient(87, 1, 5 ).
patient(9 , 1, 3 ).
patient(7 , 1, 6 ).
patient(31, 1, 1 ).
patient(51, 1, 6 ).
patient(79, 1, 1 ).
patient(45, 1, 0 ).
patient(83, 1, 3 ).
patient(61, 1, 4 ).
patient(37, 1, 4 ).
patient(73, 1, 1 ).
patient(6 , 1, 2 ).
patient(23, 1, 5 ).
patient(27, 1, 2 ).
patient(10, 1, 5 ).
patient(11, 1, 4 ).
patient(16, 0, 4 ).
patient(66, 1, 6 ).
patient(18, 1, 6 ).
patient(42, 1, 6 ).
patient(43, 1, 3 ).
patient(67, 1, 5 ).
patient(55, 1, 4 ).
patient(84, 1, 1 ).
patient(1 , 1, 2 ).
patient(36, 1, 1 ).
patient(59, 1, 6 ).
patient(25, 1, 1 ).
patient(72, 1, 0 ).
patient(4 , 1, 5 ).
patient(77, 1, -2).
patient(5 , 1, 5 ).
patient(44, 1, 6 ).
patient(47, 1, 4 ).
patient(57, 1, 5 ).
patient(33, 1, 6 ).
patient(24, 1, 6 ).
patient(30, 1, 6 ).
patient(46, 0, 6 ).
patient(69, 1, 3 ).
patient(85, 1, 6 ).
patient(56, 1, 4 ).
% location(ID,CAP,PER,STA,END)
% - ID: id - ID of the location
% - CAP: capacity - Maximum number of patients that a location can host at the same time
% - PER: period - In which period the location is available (morning or afternoon)
% - STA: start - At which time, in TU, the location starts to be available
% - END: end - At which time, in TU, the location will not be available anymore
location(1 , 15, 1, 0, 20).
location(1 , 14, 2, 0, 15).
location(2 , 1 , 1, 0, 20).
location(2 , 1 , 2, 0, 15).
location(3 , 1 , 1, 0, 20).
location(3 , 1 , 2, 0, 15).
location(4 , 1 , 1, 0, 20).
location(4 , 1 , 2, 0, 15).
location(5 , 1 , 1, 0, 20).
location(5 , 1 , 2, 0, 15).
location(6 , 1 , 1, 0, 20).
location(6 , 1 , 2, 0, 15).
location(7 , 1 , 1, 0, 20).
location(7 , 1 , 2, 0, 15).
location(8 , 1 , 1, 0, 20).
location(8 , 1 , 2, 0, 15).
location(9 , 1 , 1, 0, 20).
location(9 , 1 , 2, 0, 15).
location(10, 17, 1, 0, 20).
location(10, 12, 2, 0, 15).
% session(ID,PAT,OPE,LOC,TYP,MIN,LEN,PER,TIM,OPT,PRI)
% - ID: id - ID of the session
% - PAT: patientId - ID of the patient that partecipates in the session
% - OPE: operatorId - ID of the operator that partecipates in the session
% - LOC: locationId - ID of the location in which the session takes place
% - TYP: type - If the session is individual, supervised or a group one
% - MIN: minSessionLength - The minimal duration of the session, in TU
% - LEN: lenghtIdeal - The ideal length of the session in TU (often it corresponds to the maximum duration)
% - PER: periodIdeal - The best period to carry out the session (morning or afternoon)
% - TIM: timeIdeal - The best hour (in TU) to begin the session
% - OPT: optional - If the session is optional or mandatory
% - PRI: priority - The priority by which the ideal* settings are to be taken
session(80 , 53, 1 , 1 , 0, 5, 8, 1, 7 , 0, 1).
session(89 , 60, 1 , 1 , 0, 4, 5, 2, 10, 0, 0).
session(110, 75, 1 , 1 , 0, 4, 5, 2, 13, 0, 0).
session(111, 75, 1 , 1 , 1, 4, 5, 1, 1 , 1, 1).
session(128, 86, 1 , 1 , 0, 4, 6, 1, 2 , 0, 0).
session(5  , 3 , 1 , 1 , 0, 4, 6, 2, 11, 0, 0).
session(6  , 3 , 1 , 1 , 1, 4, 6, 1, 6 , 0, 0).
session(28 , 19, 1 , 1 , 0, 5, 8, 2, 3 , 0, 0).
session(29 , 19, 1 , 1 , 1, 4, 6, 1, 11, 1, 1).
session(18 , 13, 2 , 10, 0, 4, 6, 1, 5 , 0, 1).
session(19 , 14, 2 , 10, 0, 1, 1, 1, 2 , 0, 0).
session(20 , 14, 2 , 10, 1, 1, 1, 2, 4 , 0, 0).
session(102, 70, 2 , 10, 0, 3, 3, 1, 16, 0, 0).
session(103, 70, 2 , 10, 0, 4, 6, 2, 9 , 0, 0).
session(31 , 21, 3 , 1 , 0, 4, 5, 1, 6 , 0, 0).
session(86 , 58, 3 , 1 , 0, 5, 8, 2, 11, 0, 0).
session(21 , 15, 4 , 10, 0, 1, 1, 1, 1 , 0, 0).
session(22 , 15, 4 , 10, 1, 1, 1, 1, 18, 0, 0).
session(94 , 64, 4 , 10, 0, 5, 7, 2, 5 , 0, 0).
session(24 , 17, 5 , 1 , 0, 4, 5, 1, 6 , 0, 0).
session(25 , 17, 5 , 1 , 1, 5, 7, 1, 5 , 1, 0).
session(55 , 35, 5 , 1 , 0, 4, 5, 1, 5 , 0, 0).
session(59 , 39, 5 , 1 , 0, 5, 7, 1, 5 , 0, 0).
session(133, 90, 5 , 1 , 0, 4, 5, 2, 11, 0, 0).
session(134, 90, 5 , 1 , 1, 4, 6, 2, 8 , 0, 0).
session(39 , 26, 5 , 1 , 0, 5, 7, 1, 7 , 0, 1).
session(40 , 26, 5 , 1 , 1, 4, 6, 1, 7 , 0, 0).
session(43 , 28, 6 , 6 , 0, 4, 6, 1, 4 , 0, 0).
session(3  , 2 , 7 , 1 , 0, 4, 7, 1, 12, 0, 0).
session(4  , 2 , 7 , 1 , 1, 4, 7, 1, 2 , 1, 0).
session(30 , 20, 7 , 1 , 0, 4, 6, 1, 4 , 0, 0).
session(95 , 65, 7 , 1 , 0, 5, 8, 2, 2 , 0, 0).
session(81 , 54, 7 , 1 , 0, 5, 8, 2, 3 , 0, 0).
session(82 , 54, 7 , 1 , 1, 3, 4, 2, 13, 0, 0).
session(75 , 49, 8 , 1 , 0, 5, 7, 2, 5 , 0, 0).
session(91 , 62, 8 , 1 , 0, 3, 5, 2, 6 , 0, 0).
session(131, 89, 8 , 1 , 0, 3, 4, 2, 3 , 0, 1).
session(73 , 48, 9 , 10, 0, 1, 1, 1, 16, 0, 0).
session(74 , 48, 9 , 5 , 1, 1, 1, 1, 7 , 1, 1).
session(92 , 63, 9 , 10, 0, 3, 5, 1, 10, 0, 0).
session(93 , 63, 9 , 8 , 1, 3, 5, 2, 9 , 1, 0).
session(104, 71, 9 , 10, 0, 5, 6, 1, 14, 0, 0).
session(119, 80, 9 , 10, 0, 3, 3, 1, 9 , 0, 0).
session(120, 80, 9 , 10, 1, 4, 5, 2, 1 , 1, 0).
session(17 , 12, 10, 1 , 0, 5, 6, 1, 12, 0, 0).
session(45 , 29, 10, 1 , 0, 5, 8, 1, 5 , 0, 1).
session(53 , 34, 10, 1 , 0, 4, 6, 2, 10, 0, 1).
session(54 , 34, 10, 1 , 1, 3, 4, 1, 11, 0, 0).
session(76 , 50, 10, 1 , 0, 4, 5, 1, 1 , 0, 0).
session(112, 76, 10, 1 , 0, 4, 6, 2, 3 , 0, 0).
session(113, 76, 10, 1 , 1, 4, 5, 2, 14, 0, 0).
session(60 , 40, 10, 1 , 0, 4, 5, 2, 9 , 0, 0).
session(61 , 40, 10, 1 , 1, 3, 5, 1, 1 , 0, 1).
session(13 , 8 , 11, 10, 0, 5, 8, 1, 3 , 0, 1).
session(49 , 32, 11, 10, 0, 5, 8, 2, 11, 0, 0).
session(79 , 52, 12, 10, 0, 4, 5, 1, 13, 0, 0).
session(108, 74, 13, 10, 0, 5, 6, 1, 4 , 0, 0).
session(109, 74, 13, 10, 1, 4, 7, 2, 8 , 0, 0).
session(121, 81, 13, 10, 0, 4, 5, 1, 6 , 0, 0).
session(62 , 41, 14, 10, 0, 1, 1, 2, 4 , 0, 0).
session(33 , 22, 14, 10, 0, 5, 8, 2, 6 , 0, 0).
session(130, 88, 14, 10, 0, 4, 5, 2, 14, 0, 0).
session(58 , 38, 15, 1 , 0, 4, 6, 1, 14, 0, 0).
session(99 , 68, 15, 1 , 0, 5, 7, 1, 9 , 0, 0).
session(100, 68, 15, 1 , 1, 4, 5, 2, 7 , 1, 1).
session(122, 82, 15, 1 , 0, 3, 5, 2, 7 , 0, 0).
session(123, 82, 15, 1 , 1, 4, 5, 1, 6 , 0, 0).
session(129, 87, 15, 1 , 0, 5, 7, 1, 13, 0, 0).
session(14 , 9 , 16, 10, 0, 3, 5, 2, 14, 0, 1).
session(11 , 7 , 17, 10, 0, 5, 9, 2, 5 , 0, 0).
session(12 , 7 , 17, 10, 1, 5, 6, 2, 10, 0, 0).
session(48 , 31, 17, 7 , 0, 1, 1, 2, 1 , 0, 1).
session(77 , 51, 17, 10, 0, 3, 4, 2, 13, 0, 0).
session(78 , 51, 17, 2 , 1, 4, 6, 2, 1 , 1, 0).
session(118, 79, 17, 10, 0, 1, 1, 2, 14, 0, 0).
session(68 , 45, 18, 1 , 0, 3, 4, 1, 12, 0, 0).
session(124, 83, 18, 1 , 0, 3, 4, 2, 5 , 0, 0).
session(90 , 61, 18, 1 , 0, 4, 5, 2, 8 , 0, 0).
session(57 , 37, 20, 3 , 0, 4, 5, 2, 14, 0, 1).
session(107, 73, 21, 10, 0, 1, 1, 1, 5 , 0, 0).
session(9  , 6 , 22, 10, 0, 1, 1, 2, 9 , 0, 0).
session(10 , 6 , 22, 10, 1, 1, 1, 2, 12, 1, 0).
session(34 , 23, 22, 10, 0, 5, 6, 1, 8 , 0, 1).
session(41 , 27, 22, 10, 0, 1, 1, 2, 12, 0, 0).
session(42 , 27, 22, 10, 1, 1, 1, 1, 11, 1, 0).
session(15 , 10, 23, 1 , 0, 5, 6, 2, 11, 0, 1).
session(16 , 11, 23, 1 , 0, 4, 6, 1, 8 , 0, 0).
session(23 , 16, 23, 1 , 0, 4, 5, 2, 12, 0, 1).
session(96 , 66, 23, 1 , 0, 3, 4, 2, 15, 0, 1).
session(97 , 66, 23, 1 , 1, 4, 5, 2, 6 , 0, 0).
session(26 , 18, 23, 1 , 0, 4, 6, 1, 2 , 0, 0).
session(27 , 18, 23, 1 , 1, 4, 7, 1, 1 , 0, 0).
session(63 , 42, 24, 1 , 0, 4, 5, 2, 4 , 0, 0).
session(64 , 42, 24, 1 , 1, 4, 5, 1, 9 , 1, 0).
session(65 , 43, 24, 1 , 0, 3, 3, 2, 10, 0, 1).
session(98 , 67, 24, 1 , 0, 5, 7, 2, 12, 0, 0).
session(83 , 55, 25, 10, 0, 4, 4, 1, 15, 0, 0).
session(125, 84, 25, 10, 0, 1, 1, 2, 10, 0, 0).
session(1  , 1 , 26, 9 , 0, 1, 1, 2, 7 , 0, 1).
session(2  , 1 , 26, 10, 0, 1, 1, 1, 17, 1, 0).
session(56 , 36, 26, 4 , 0, 1, 1, 1, 15, 0, 0).
session(87 , 59, 26, 10, 0, 4, 7, 2, 13, 0, 1).
session(88 , 59, 26, 10, 1, 3, 4, 1, 11, 0, 0).
session(37 , 25, 27, 1 , 0, 3, 4, 1, 9 , 0, 1).
session(105, 72, 27, 1 , 0, 5, 7, 1, 1 , 0, 0).
session(7  , 4 , 27, 1 , 0, 5, 6, 2, 11, 0, 0).
session(114, 77, 27, 1 , 0, 4, 6, 1, 8 , 0, 0).
session(8  , 5 , 28, 1 , 0, 5, 8, 2, 10, 0, 1).
session(66 , 44, 28, 1 , 0, 3, 5, 2, 5 , 0, 0).
session(67 , 44, 28, 1 , 1, 4, 6, 2, 12, 1, 0).
session(72 , 47, 28, 1 , 0, 4, 6, 1, 7 , 0, 0).
session(85 , 57, 28, 1 , 0, 5, 6, 1, 9 , 0, 0).
session(51 , 33, 29, 10, 0, 4, 6, 2, 12, 0, 0).
session(52 , 33, 29, 10, 1, 4, 5, 1, 7 , 1, 0).
session(35 , 24, 29, 10, 0, 5, 6, 1, 13, 0, 0).
session(36 , 24, 29, 10, 1, 4, 5, 2, 6 , 1, 0).
session(46 , 30, 30, 1 , 0, 3, 5, 2, 13, 0, 0).
session(47 , 30, 30, 1 , 0, 3, 5, 1, 2 , 1, 0).
session(70 , 46, 30, 1 , 0, 3, 3, 1, 3 , 0, 1).
session(71 , 46, 30, 1 , 1, 4, 5, 2, 14, 1, 0).
session(101, 69, 30, 1 , 0, 3, 4, 1, 3 , 0, 0).
session(126, 85, 30, 1 , 0, 4, 7, 2, 4 , 0, 1).
session(127, 85, 30, 1 , 1, 4, 5, 1, 10, 0, 0).
session(84 , 56, 30, 1 , 0, 4, 4, 2, 11, 0, 0).
% period(PER,OPE,STA,END)
% - PER: period - Indicates in which period the shift starts (morning or afternoon)
% - OPE: operatorId - The ID of the operator that does the shift
% - STA: start - The time, in TU, at which the session starts
% - END: end - The time, in TU, at which the session ends
period(1, 1 , 2 , 23).
period(2, 1 , 4 , 19).
period(1, 2 , 2 , 23).
period(2, 2 , 3 , 22).
period(2, 3 , 1 , 13).
period(1, 4 , 6 , 23).
period(2, 4 , 1 , 14).
period(1, 5 , 1 , 23).
period(2, 5 , 2 , 13).
period(2, 6 , 3 , 20).
period(1, 7 , 9 , 23).
period(2, 7 , 1 , 10).
period(1, 8 , 3 , 15).
period(1, 9 , 5 , 23).
period(2, 9 , 1 , 16).
period(1, 10, 1 , 23).
period(2, 10, 2 , 18).
period(2, 11, 3 , 19).
period(1, 12, 2 , 17).
period(1, 13, 3 , 23).
period(2, 13, 1 , 15).
period(1, 14, 7 , 23).
period(2, 14, 2 , 13).
period(1, 15, 5 , 23).
period(2, 15, 4 , 14).
period(2, 16, 1 , 19).
period(1, 17, 10, 23).
period(2, 17, 4 , 13).
period(2, 18, 1 , 12).
period(1, 19, 2 , 20).
period(1, 20, 4 , 23).
period(2, 20, 4 , 13).
period(1, 21, 11, 23).
period(2, 21, 1 , 9 ).
period(1, 22, 1 , 23).
period(2, 22, 0 , 17).
period(1, 23, 7 , 23).
period(2, 23, 1 , 13).
period(1, 24, 12, 23).
period(2, 24, 2 , 11).
period(1, 25, 8 , 23).
period(2, 25, 0 , 11).
period(1, 26, 1 , 23).
period(2, 26, 3 , 20).
period(1, 27, 3 , 21).
period(1, 28, 9 , 23).
period(2, 28, 2 , 13).
period(1, 29, 3 , 23).
period(2, 29, 1 , 14).
period(1, 30, 6 , 23).
period(2, 30, 3 , 16).
% time(PER,OPE,LEN)
% - PER: period - Indicates in which period the shift starts (morning or afternoon)
% - OPE: operatorId - The ID of the operator that does the shift
% - LEN: length - The length, in TU, of the operator's shift
time(1, 1 , 2..23 ).
time(2, 1 , 4..19 ).
time(1, 2 , 2..23 ).
time(2, 2 , 3..22 ).
time(2, 3 , 1..13 ).
time(1, 4 , 6..23 ).
time(2, 4 , 1..14 ).
time(1, 5 , 1..23 ).
time(2, 5 , 2..13 ).
time(2, 6 , 3..20 ).
time(1, 7 , 9..23 ).
time(2, 7 , 1..10 ).
time(1, 8 , 3..15 ).
time(1, 9 , 5..23 ).
time(2, 9 , 1..16 ).
time(1, 10, 1..23 ).
time(2, 10, 2..18 ).
time(2, 11, 3..19 ).
time(1, 12, 2..17 ).
time(1, 13, 3..23 ).
time(2, 13, 1..15 ).
time(1, 14, 7..23 ).
time(2, 14, 2..13 ).
time(1, 15, 5..23 ).
time(2, 15, 4..14 ).
time(2, 16, 1..19 ).
time(1, 17, 10..23).
time(2, 17, 4..13 ).
time(2, 18, 1..12 ).
time(1, 19, 2..20 ).
time(1, 20, 4..23 ).
time(2, 20, 4..13 ).
time(1, 21, 11..23).
time(2, 21, 1..9  ).
time(1, 22, 1..23 ).
time(2, 22, 0..17 ).
time(1, 23, 7..23 ).
time(2, 23, 1..13 ).
time(1, 24, 12..23).
time(2, 24, 2..11 ).
time(1, 25, 8..23 ).
time(2, 25, 0..11 ).
time(1, 26, 1..23 ).
time(2, 26, 3..20 ).
time(1, 27, 3..21 ).
time(1, 28, 9..23 ).
time(2, 28, 2..13 ).
time(1, 29, 3..23 ).
time(2, 29, 1..14 ).
time(1, 30, 6..23 ).
time(2, 30, 3..16 ).
% forbidden(PAT,PER,STA,END)
% - PAT: patientId - The id of the unavailable patient
% - PER: period - Indicates in which period the unavailability is placed
% - STA: start - The time, in TU, at which the unavailability starts
% - END: end - The time, in TU, at which the unavailability ends
forbidden(53, 2, 7, 10).
forbidden(75, 2, 4, 5 ).
forbidden(19, 2, 9, 13).
forbidden(13, 2, 3, 6 ).
forbidden(17, 1, 6, 12).
forbidden(35, 2, 5, 6 ).
forbidden(35, 2, 6, 8 ).
forbidden(2 , 1, 6, 8 ).
forbidden(48, 1, 2, 5 ).
forbidden(80, 2, 4, 8 ).
forbidden(12, 1, 9, 13).
forbidden(8 , 2, 9, 13).
forbidden(81, 2, 2, 2 ).
forbidden(88, 1, 6, 9 ).
forbidden(51, 1, 2, 4 ).
forbidden(83, 1, 2, 6 ).
forbidden(37, 2, 3, 6 ).
forbidden(6 , 2, 8, 9 ).
forbidden(6 , 1, 9, 10).
forbidden(10, 1, 7, 8 ).
forbidden(42, 1, 8, 11).
forbidden(25, 1, 5, 8 ).
forbidden(5 , 1, 6, 12).
forbidden(33, 2, 5, 9 ).
forbidden(24, 1, 2, 5 ).
forbidden(30, 1, 5, 11).
forbidden(46, 1, 8, 12).
% sessionLocation(SES,LOC,MAC)
% - SES: sessionId - The id of the session
% - LOC: locationId - The id of the location in which the session takes place
% - MAC: macroLocationId - The if of the macro-location in which the session takes place
sessionLocation(80 , 1 , 1 ).
sessionLocation(89 , 1 , 1 ).
sessionLocation(110, 1 , 1 ).
sessionLocation(111, 1 , 1 ).
sessionLocation(128, 1 , 1 ).
sessionLocation(5  , 1 , 1 ).
sessionLocation(6  , 1 , 1 ).
sessionLocation(28 , 1 , 1 ).
sessionLocation(29 , 1 , 1 ).
sessionLocation(18 , 10, 10).
sessionLocation(19 , 10, 10).
sessionLocation(20 , 10, 10).
sessionLocation(102, 10, 10).
sessionLocation(103, 10, 10).
sessionLocation(31 , 1 , 1 ).
sessionLocation(32 , 1 , 1 ).
sessionLocation(86 , 1 , 1 ).
sessionLocation(21 , 10, 10).
sessionLocation(22 , 10, 10).
sessionLocation(94 , 10, 10).
sessionLocation(24 , 1 , 1 ).
sessionLocation(25 , 1 , 1 ).
sessionLocation(55 , 1 , 1 ).
sessionLocation(59 , 1 , 1 ).
sessionLocation(133, 1 , 1 ).
sessionLocation(134, 1 , 1 ).
sessionLocation(39 , 1 , 1 ).
sessionLocation(40 , 1 , 1 ).
sessionLocation(43 , 6 , 6 ).
sessionLocation(44 , 10, 10).
sessionLocation(3  , 1 , 1 ).
sessionLocation(4  , 1 , 1 ).
sessionLocation(30 , 1 , 1 ).
sessionLocation(95 , 1 , 1 ).
sessionLocation(81 , 1 , 1 ).
sessionLocation(82 , 1 , 1 ).
sessionLocation(75 , 1 , 1 ).
sessionLocation(91 , 1 , 1 ).
sessionLocation(131, 1 , 1 ).
sessionLocation(132, 1 , 1 ).
sessionLocation(73 , 10, 10).
sessionLocation(74 , 5 , 5 ).
sessionLocation(92 , 10, 10).
sessionLocation(93 , 8 , 8 ).
sessionLocation(104, 10, 10).
sessionLocation(119, 10, 10).
sessionLocation(120, 10, 10).
sessionLocation(17 , 1 , 1 ).
sessionLocation(45 , 1 , 1 ).
sessionLocation(53 , 1 , 1 ).
sessionLocation(54 , 1 , 1 ).
sessionLocation(76 , 1 , 1 ).
sessionLocation(112, 1 , 1 ).
sessionLocation(113, 1 , 1 ).
sessionLocation(60 , 1 , 1 ).
sessionLocation(61 , 1 , 1 ).
sessionLocation(13 , 10, 10).
sessionLocation(49 , 10, 10).
sessionLocation(50 , 10, 10).
sessionLocation(79 , 10, 10).
sessionLocation(108, 10, 10).
sessionLocation(109, 10, 10).
sessionLocation(121, 10, 10).
sessionLocation(62 , 10, 10).
sessionLocation(33 , 10, 10).
sessionLocation(130, 10, 10).
sessionLocation(58 , 1 , 1 ).
sessionLocation(99 , 1 , 1 ).
sessionLocation(100, 1 , 1 ).
sessionLocation(122, 1 , 1 ).
sessionLocation(123, 1 , 1 ).
sessionLocation(129, 1 , 1 ).
sessionLocation(14 , 10, 10).
sessionLocation(11 , 10, 10).
sessionLocation(12 , 10, 10).
sessionLocation(48 , 7 , 7 ).
sessionLocation(77 , 10, 10).
sessionLocation(78 , 2 , 2 ).
sessionLocation(118, 10, 10).
sessionLocation(68 , 1 , 1 ).
sessionLocation(69 , 1 , 1 ).
sessionLocation(124, 1 , 1 ).
sessionLocation(90 , 1 , 1 ).
sessionLocation(57 , 3 , 3 ).
sessionLocation(107, 10, 10).
sessionLocation(9  , 10, 10).
sessionLocation(10 , 10, 10).
sessionLocation(34 , 10, 10).
sessionLocation(41 , 10, 10).
sessionLocation(42 , 10, 10).
sessionLocation(15 , 1 , 1 ).
sessionLocation(16 , 1 , 1 ).
sessionLocation(23 , 1 , 1 ).
sessionLocation(96 , 1 , 1 ).
sessionLocation(97 , 1 , 1 ).
sessionLocation(26 , 1 , 1 ).
sessionLocation(27 , 1 , 1 ).
sessionLocation(63 , 1 , 1 ).
sessionLocation(64 , 1 , 1 ).
sessionLocation(65 , 1 , 1 ).
sessionLocation(98 , 1 , 1 ).
sessionLocation(83 , 10, 10).
sessionLocation(125, 10, 10).
sessionLocation(1  , 9 , 9 ).
sessionLocation(2  , 10, 10).
sessionLocation(56 , 4 , 4 ).
sessionLocation(87 , 10, 10).
sessionLocation(88 , 10, 10).
sessionLocation(37 , 1 , 1 ).
sessionLocation(38 , 1 , 1 ).
sessionLocation(105, 1 , 1 ).
sessionLocation(106, 1 , 1 ).
sessionLocation(7  , 1 , 1 ).
sessionLocation(114, 1 , 1 ).
sessionLocation(115, 1 , 1 ).
sessionLocation(8  , 1 , 1 ).
sessionLocation(66 , 1 , 1 ).
sessionLocation(67 , 1 , 1 ).
sessionLocation(72 , 1 , 1 ).
sessionLocation(85 , 1 , 1 ).
sessionLocation(51 , 10, 10).
sessionLocation(52 , 10, 10).
sessionLocation(35 , 10, 10).
sessionLocation(36 , 10, 10).
sessionLocation(46 , 1 , 1 ).
sessionLocation(47 , 1 , 1 ).
sessionLocation(70 , 1 , 1 ).
sessionLocation(71 , 1 , 1 ).
sessionLocation(101, 1 , 1 ).
sessionLocation(126, 1 , 1 ).
sessionLocation(127, 1 , 1 ).
sessionLocation(84 , 1 , 1 ).
% -------- RULES --------
%Defines the allowed times in which a session can actually start.
forbiddenRange(ID, PER, XSTA, END) :- forbidden(PAT, PER, STA, END), session(ID,PAT,OP,_,_,MIN,_,_,_,_,_), XSTA = STA - MIN + 1.
forbiddenTime(ID, PER, STA..END-1) :- forbiddenRange(ID, PER, STA, END).
allowedTime(ID,PER,T) :- time(PER,OP,T), session(ID,PAT,OP,_,_,MIN,_,_,_,_,_), period(PER,OP,_, MAX), T <= MAX - MIN, not forbiddenTime(ID,PER,T).
%Finds the maximum lenght of a session comparing the ideal time with the mimimum time of the patient.
sessionMaxLengths(ID, MAX1..MAX2) :-  session(ID,PAT,_,_,_,_,MAX1,_,_,_,_), patient(PAT, _, MAX2).
sessionMaxLengths(ID, MAX2..MAX1) :-  session(ID,PAT,_,_,_,_,MAX1,_,_,_,_), patient(PAT, _, MAX2).
sessionMaxLength(ID, MAX) :- sessionMaxLengths(ID, MAX), session(ID,PAT,_,_,_,_,MAX1,_,_,_,_), patient(PAT, _, MAX2), MAX >= MAX1, MAX >= MAX2.
%Assign the starting time to every compulsory session and to the maximum number of the optional ones.
1 {start(ID,PER,TS) : allowedTime(ID,PER,TS)} 1 :- session(ID,_,OP,_,_,MIN,_,_,_,0,_).
0 {start(ID,PER,TS) : allowedTime(ID,PER,TS)} 1 :- session(ID,_,OP,_,_,MIN,_,_,_,1,_).
%For each starting time, assign the length.
1 {length(ID,PER,NL) : time(PER,OP,T), NL=T-TS, NL>= MIN, NL<= MAX} 1 :- start(ID,PER,TS), session(ID,_,OP,_,_,MIN,_,_,_,_,_), sessionMaxLength(ID, MAX).
%Get guess that assign to each session a location according to its macro location.
1 {sessionLocation(SES,LOC,MAC) : macroLocation(MAC,LOC)} 1 :- macroLocation(MAC,_), session(SES,_,_,MAC,_,_,_,_,_,_,_).
%reserve some time before the start of the individual session.
1 {before(ID,NL): allowedTime(ID,PER,T), T<=TS, NL=TS-T, NL<=MAX-MIN} 1 :- start(ID,PER,TS), session(ID,_,OP,_,0,MIN,_,_,_,_,_), sessionMaxLength(ID, MAX).
%reserve some time after the end of the individual session.
1 {after(ID,NL): time(PER,OP,T), T>=TS+LEN, NL=T-TS-LEN, NL<=MAX-MIN} 1 :- start(ID,PER,TS), length(ID,PER,LEN), session(ID,_,OP,_,0,MIN,_,_,_,_,_), sessionMaxLength(ID, MAX).
%supervised sessions don't need before and after.
before(ID,0) :- session(ID,_,_,_,1,_,_,_,_,_,_).
after(ID,0) :- session(ID,_,_,_,1,_,_,_,_,_,_).
%Define the candidate extended start and length.
extstart(ID,PER,TS-LB) :- start(ID,PER,TS), before(ID,LB).
extlength(ID,PER,LEN) :- length(ID,PER,L), after(ID,LA),before(ID,LB), LEN=L+LA+LB, sessionMaxLength(ID, MAX), LEN <= MAX.
:- start(ID, _, _), not extlength(ID, _, _).
%Impose that individual assignments shall not overlap.
:- start(ID,PER,TS), length(ID,PER,L), session(ID,_,OP,_,0,_,_,_,_,_,_), start(ID2,PER,TS2), session(ID2,_,OP,_,0,_,_,_,_,_,_), ID!=ID2, TS2>=TS, TS2<TS+L.
%Impose that group assignments may not overlap with any other assignments.
:- start(ID,PER,TS), length(ID,PER,L), session(ID,_,OP,_,TY,_,_,_,_,_,_), start(ID2,PER,TS2), session(ID2,_,OP,_,2 ,_,_,_,_,_,_), TY!=2, TS2>=TS, TS2<TS+L.
:- start(ID,PER,TS), length(ID,PER,L), session(ID,_,OP,_,2 ,_,_,_,_,_,_), start(ID2,PER,TS2), session(ID2,_,OP,_,TY,_,_,_,_,_,_),TY!=2, TS2>=TS, TS2<TS+L.
%Impose that for each patient, no more than a session per period is assigned.
:- start(ID1,PER1,_), session(ID1,PAT,_,_,_,_,_,_,_,_,_), start(ID2,PER2,_), session(ID2,PAT,_,_,_,_,_,_,_,_,_), ID1!=ID2, PER1=PER2.
%Impose equal reduction of session lengths for sessions in the same location and period the difference of the differences between the ideal length and allocated length between any two sessions in the same location and period must not exceed 1 time unit.
:- length(ID1,PER,L1), session(ID1,_,OP,_,0,MIN1,OPT1,_,_,_,_), sessionLocation(ID1,PL,_), length(ID2,PER,L2), session(ID2,_,OP,_,0,MIN2,OPT2,_,_,_,_), sessionLocation(ID2,PL,_), OPT1-L1 <= OPT2-MIN2, OPT2-L2 <= OPT1-MIN1 , |OPT1 -L1 - OPT2 + L2| > 1.
:- length(ID1,PER,L1), session(ID1,_,OP,_,0,MIN1,OPT1,_,_,_,_), sessionLocation(ID1,PL,_), length(ID2,PER,L2), session(ID2,_,OP,_,0,MIN2,OPT2,_,_,_,_), sessionLocation(ID2,PL,_), OPT1-L1 > OPT2-MIN2, L2 > MIN2.
%impose that the lower ideal length sessions' allocated lengths must be reduced for last.
:- length(ID1,PER,L1), session(ID1,_,OP,_,0,MIN1,OPT1,_,_,_,_), sessionLocation(ID1,PL,_), length(ID2,PER,L2), session(ID2,_,OP,_,0,MIN2,OPT2,_,_,_,_), sessionLocation(ID2,PL,_), OPT1-L1 <= OPT2-MIN2, OPT2-L2 <= OPT1-MIN1, OPT2<OPT1, OPT1-L1 < OPT2-L2.
%Impose that for each session, the operator must not be occupied in a different place.
sessionAtTime(ID,OP,PL,PER,TS..TS+L-1) :- session(ID,_,OP,_,_,_,_,_,_,_,_), sessionLocation(ID,PL,_), extstart(ID,PER,TS), extlength(ID,PER,L).
:- time(PER,OP,T), #count{PL : sessionAtTime(_,OP,PL,PER,T)} > 1.
%Impose that each patient has their minimum time reserved.
:- patient(ID,_,MIN), #sum{LEN, SES: session(SES,ID,_,_,_,_,_,_,_,_,_), extlength(SES,_,LEN)} < MIN.
%Impose a limit to the concurrent use of equipment/locations with limited capacity.
:- location(LOC,LIM,PER,ST,END), LIM>0, time(PER,_,T), T>=ST, T<END, #count{ID: sessionAtTime(ID, _, LOC, PER,T)} > LIM.
%Impose that a session cannot happen during a forbidden time.
:- forbidden(PAT,PER,ST,_), session(ID,PAT,_,_,_,_,_,_,_,_,_), extstart(ID,PER,TS), extlength(ID,PER,L), ST>=TS, ST<TS+L.
:- forbidden(PAT,PER,ST,END), session(ID,PAT,_,_,_,_,_,_,_,_,_), extstart(ID,PER,TS), extlength(ID,PER,L), ST<=TS,END>TS.
:- forbidden(PAT,PER,_,END), session(ID,PAT,_,_,_,_,_,_,_,_,_), extstart(ID,PER,TS), extlength(ID,PER,L), END>TS, END<=TS+L.
%Check that at each time the distribution of sessions between each pair of locations inside the same macro location is fair.
:- time(PER,_,T), macroLocation(MAC,LOC1), macroLocation(MAC,LOC2), #sum{1,ID1 : sessionAtTime(ID1,_,LOC1,PER,T); -1,ID2 : sessionAtTime(ID2,_,LOC2,PER,T)} > 2.
% -------- WEAK CONSTRAINTS --------
%For each session minimize the difference between the allocated and ideal lengths
:~ length(ID,_, L), session(ID,_,_,_,_,_, OPT,_,_,_,_), D = |L - OPT|. [D@8, ID]
%Try to place individual prioritized sessions near their ideal period
:~ start(ID,PER,_), session(ID,_,_,_,0,_,_,OPT,_,_,1), D = |PER - OPT|. [D@7, ID]
%Try to place individual prioritized sessions near their ideal time
:~ start(ID,PER,TS), session(ID,_,_,_,0,_,_,PER,OPT,_,1), D = |TS - OPT|. [D@6, ID]
%Minimize the number of optional session not assigned
#const optionals = 18.
:~ #count {ID : start(ID,_,_), session(ID,_,_,_,_,_,_,_,_,1,_)} = N, D = optionals - N. [D@5]
%Try to place individual not prioritized sessions near their ideal period
:~ start(ID,PER,_), session(ID,_,_,_,0,_,_,OPT,_,_,0), D = |PER - OPT|. [D@2, ID]
%Try to place individual not prioritized sessions near their ideal time
:~ start(ID,PER,TS), session(ID,_,_,_,0,_,_,PER,OPT,_,0), D = |TS - OPT|. [D@1, ID]
% -------- DIRECTIVES --------
#show start/3.
#show length/3.
#show sessionLocation/3.