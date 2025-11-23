%Simple Medical Diagnosis System
%diagnosis.pl


%Facts: symptom(Disease, Symptom).
%Add more diseases and symptoms as needed.

symptom(flu, fever). 
symptom(flu, headache).
symptom(flu, bodypain).
symptom(flu, fatigue).

symptom(cold, sneezing).
symptom(cold, runny_nose).
symptom(cold, sore_throat).
symptom(cold, cough).

symptom(thyphoid, fever).
symptom(thyphoid, weakness).
symptom(thyphoid, stomach_pain).
symptom(thyphoid, loss_of_appetite).

diagnose_simple(Disease, Symptom):- symptom(Disease, Symptom).
disease(D) :- symptom(D,_).
diagnose_all(Symptoms, Disease):- disease(Disease), forall(member(S, Symptoms), symptom(Disease, S)).