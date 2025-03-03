symptoms(fever).
symptoms(cough).
symptoms(sore_throat).
symptoms(running_nose).
symptoms(eye_redness).
diagnose(malaria):-
    symptoms(fever),
    symptoms(cough),
    symptoms(running_nose),
    not(symptoms(sore_throat)),
    not(symptoms(eye_redness)).
diagnose(typhoid):-
    symptoms(fever),
    symptoms(cough),
    symptoms(running_nose),
    symptoms(sore_throat),
    symptoms(eye_redness).
diagnosis(X):-diagnose(X),!,write('the patient has'),write(X),nl.
diagnosis(X):-write('the diagnosis is inconclusive for '),write(X),nl.

