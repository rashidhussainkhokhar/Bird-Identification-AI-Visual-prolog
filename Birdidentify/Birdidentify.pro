% Copyright

implement birdidentify
    inherits formWindow
    open core, vpiDomains


clauses
    display(Parent) = Form :-
        Form = new(Parent),
        Form:show().

clauses
    new(Parent):-
        formWindow::new(Parent),
        generatedInitialize().

facts
 symptom : (string Order, string Type) nondeterm.

predicates
    bird : (string Laysan_albatross).

    clauses
    bird(Laysan_albatross) :-
      family(Laysan_albatross),
      bcolor(Laysan_albatross),
      flight("Pulmar"),
      family_swan(),
      voice().






predicates
    family : (string Albatross).

    clauses
    family(Albatross) :-
      order(Albatross),
      size(Albatross),
      wings(Albatross).


predicates
    family_swan : ().

    clauses
    family_swan() :-
      order_waterfowl(),
      neck().


predicates
    order_waterfowl : ().

    clauses
    order_waterfowl() :-
      feet().




    predicates
    order : (string Tubenose).

    clauses
    order(Tubenose) :-
      nostrils(Tubenose),
      live(Tubenose),
      bill(Tubenose).



predicates
    feet : ().

    clauses
    feet() :-
    quesText_ctl:setText("How are birds feet  ? "),
    if b_true = vpiCommonDialogs::listSelect("Feet Bird ",["webbed"] ,0,SelStr,SelInd) then
    assert(symptom("feet", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("are the bird's feet exist  ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("are the bird's feet exist  ?   None")
    end if.


predicates
    neck : ().

    clauses
    neck() :-
    quesText_ctl:setText("How is birds neck  ? "),
    if b_true = vpiCommonDialogs::listSelect("Neck Bird ",["long"] ,0,SelStr,SelInd) then
    assert(symptom("neck", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("are the bird's neck exist  ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("are the bird's neck exist  ?   None")
    end if.


predicates
    voice : ().

    clauses
    voice() :-
    quesText_ctl:setText("How is birds voice  ? "),
    if b_true = vpiCommonDialogs::listSelect("voice Bird ",["muffled_musical_whistle"] ,0,SelStr,SelInd) then
    assert(symptom("voice", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("are the bird's voice exist  ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("are the bird's voice exist  ?   None")
    end if.

predicates
    flight : (string Flight).

    clauses
    flight(Flight) :-
    quesText_ctl:setText("What is birds flight  ? "),
    if b_true = vpiCommonDialogs::listSelect("Flight Bird ",["ponderous","powerful","agile","flap_glide"] ,0,SelStr,SelInd) then
    assert(symptom("flight", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("is the bird's Flight exist  ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("is the bird's flight exist  ?   None")
    end if.




predicates
    bcolor : (string White).

    clauses
    bcolor(White) :-
    quesText_ctl:setText("is the bird's color white ? "),
    if b_true = vpiCommonDialogs::listSelect("Color Bird ",["white","dark"] ,0,SelStr,SelInd) then
    assert(symptom("color", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("is the bird's color  ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("is the bird's color  ?   None")
    end if.


predicates
    wings : (string Long_narrow).

    clauses
    wings(Long_narrow) :-
    quesText_ctl:setText("is the bird's wings are long and narrow ? "),
    if vpiCommonDialogs::getString("Size ?","is the bird's wings are long and narrow ?  ","") = "yes" then
    assert(symptom("wings", "long_narrow")),
    ansText1_ctl:setText("yes"),
    listbox_ctl:add("is the bird's wings are long and narrow ?   yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("is the bird's wings are long and narrow ?   No")
    end if.



predicates
    size : (string Large).

    clauses
    size(Large) :-
    quesText_ctl:setText("is  bird's Size is large ? "),
    if b_true = vpiCommonDialogs::listSelect("Size Bird ",["large","plump","medium","small"] ,0,SelStr,SelInd) then
    assert(symptom("size", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("is  bird's Size is large ?  yes")
    else
    SelStr="none",
    ansText1_ctl:setText(SelStr),
     listbox_ctl:add("Is  bird's Size  ?  None")
    end if.

    predicates
    bill : (string Hooked).

    clauses
    bill(Hooked) :-
    quesText_ctl:setText("is the bird's bill hooked ? "),
    if  b_true = vpiCommonDialogs::listSelect("Bill Bird ",["Hooked","flat"] ,0,SelStr,SelInd) then
    assert(symptom("bill", Selstr)),
    ansText1_ctl:setText(SelStr),
    listbox_ctl:add("Is the bird's bill hooked ?  yes")
    else
    ansText1_ctl:setText("No"),
     listbox_ctl:add("Is the bird's bill hooked ?  No")
    end if.

      predicates
    live : (string At_sea).

    clauses
    live(At_sea) :-
    ansText1_ctl:setText(""),
    quesText_ctl:setText("is the bird live At sea ? "),
    if vpiCommonDialogs::getString("Live ?","Is the bird Live At sea ? ","") = "yes" then
    assert(symptom("live", "At_Sea")),
    ansText1_ctl:setText("yes"),
    listbox_ctl:add("Is the bird Live At sea ? yes")
    else
    ansText1_ctl:setText("No"),
    listbox_ctl:add("Is the bird Live At sea ? No")
    end if.



      predicates
    nostrils : (string External_tubular).

    clauses
    nostrils(External_tubular) :-
    ansText1_ctl:setText(""),
    quesText_ctl:setText("is the bird nostril external tubular ? "),
    if vpiCommonDialogs::getString("Notril ?","Is the bird nostril external tubular ? ","") = "yes" then
    assert(symptom("nostril", "External_tubular")),
    ansText1_ctl:setText("yes"),
    listbox_ctl:add("Is the bird nostril external tubular ? yes")
    else
    ansText1_ctl:setText("No"),
    listbox_ctl:add("Is the bird nostril external tubular ? No")
    end if.


predicates
    hypothesis : (string Ord [out], string Performance [out]) nondeterm.

clauses
    hypothesis("Bird", "Laysan_albatross" ) :-
    symptom("nostril", "External_tubular"),
    symptom("live", "At_Sea"),
    symptom("bill","Hooked"),
    symptom("size", "large"),
    symptom("wings","long_narrow"),
    symptom("color","white").

    hypothesis("Bird", "Black_footed_albatross" ) :-
    symptom("nostril", "External_tubular"),
    symptom("live", "At_Sea"),
    symptom("bill","Hooked"),
    symptom("size", "large"),
    symptom("wings","long_narrow"),
    symptom("color","dark").

    hypothesis("Bird", "Fulmar" ) :-
    symptom("nostril", "External_tubular"),
    symptom("live", "At_Sea"),
    symptom("bill","Hooked"),
    symptom("size", "medium"),
    symptom("flight","flap_glide").

     hypothesis("Bird", "Whistling_swan" ) :-
    symptom("feet", "webbed"),
    symptom("bill","flat"),
    symptom("neck", "long"),
    symptom("color","white"),
    symptom("flight","ponderous"),
    symptom("voice","muffled_musical_whistle").



predicates
    gradePupil : () nondeterm.
clauses
    gradePupil() :-
        hypothesis(Bird, Type),
        vpiCommonDialogs::note("Bird ",string::concat(Bird," is ",Type)).



predicates
    onPushButtonClick : button::clickResponder.
clauses
    onPushButtonClick(_Source) = button::defaultAction:-
    retractAll(symptom(_,_)),
    listbox_ctl:clearAll(),
    bird("Laysan_albatross"),
    if gradePupil() then
    else
    vpiCommonDialogs::note("Maybe you are seeking another bird")
    end if.


% This code is maintained automatically, do not update it manually. 18:44:37-16.5.2016
facts
    quesText_ctl : textControl.
    pushButton_ctl : button.
    ansText1_ctl : textControl.
    listbox_ctl : listBox.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("Birdidentify"),
        setRect(rct(50,40,439,306)),
        setDecoration(titlebar([closeButton,maximizeButton,minimizeButton])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Bird Identification"),
        StaticText_ctl:setPosition(96, 4),
        StaticText_ctl:setSize(88, 10),
        StaticText_ctl:setAlignment(alignCenter),
        quesText_ctl := textControl::new(This),
        quesText_ctl:setText(""),
        quesText_ctl:setPosition(4, 38),
        quesText_ctl:setSize(152, 10),
        pushButton_ctl := button::new(This),
        pushButton_ctl:setText("Identify Bird"),
        pushButton_ctl:setPosition(236, 2),
        pushButton_ctl:setWidth(56),
        pushButton_ctl:defaultHeight := true,
        pushButton_ctl:setClickResponder(onPushButtonClick),
        ansText1_ctl := textControl::new(This),
        ansText1_ctl:setText(""),
        ansText1_ctl:setPosition(4, 50),
        listbox_ctl := listBox::new(This),
        listbox_ctl:setPosition(172, 30),
        listbox_ctl:setSize(212, 224).
% end of automatic code
end implement birdidentify