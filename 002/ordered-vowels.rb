array = ["absconder", "absconders", "absconding", "absconds", "abseil", "abseiled", "abseiling", "abseils", "absence", "absences", "absent", "absented", "absentee", "absenteeism", "absenteeisms", "absentees", "absenter", "absenters", "absenting", "absently", "absentminded", "absentmindedly", "absentmindedness", "absentmindednesses", "absents", "absinth", "absinthe", "absinthes", "absinths", "absolute", "absolutely", "absoluteness", "absolutenesses", "absoluter", "absolutes", "absolutest", "absolution", "absolutions", "absolutism", "absolutisms", "absolutist", "absolutistic", "absolutists", "absolutive", "absolutize", "absolutized", "absolutizes", "absolutizing", "absolve", "absolved", "absolver", "absolvers", "absolves", "absolving", "absonant", "absorb", "absorbabilities", "absorbability", "absorbable", "absorbance", "absorbances", "absorbancies", "absorbancy", "absorbant", "absorbants", "absorbed", "absorbencies", "absorbency", "absorbent", "absorbents", "absorber", "absorbers", "absorbing", "absorbingly", "absorbs", "absorptance", "absorptances", "absorption", "absorptions", "absorptive", "absorptivities", "absorptivity", "absquatulate", "absquatulated", "absquatulates", "absquatulating", "abstain", "abstained", "abstainer", "abstainers", "abstaining", "abstains", "abstemious", "abstemiously", "abstemiousness", "abstemiousnesses", "abstention", "abstentions", "abstentious", "absterge"]
filtered = [];

i = 0
while i < array.length do
    i += 1
    if ((array[i].includes("a", "e", "i", "o", "u") and
        array[i].indexOf("a") < array[i].indexOf("e") and
        array[i].indexOf("e") < array[i].indexOf("i") and
        array[i].indexOf("i") < array[i].indexOf("o") and
        array[i].indexOf("o") < array[i].indexOf("u") and
        (array[i].split("a").length - 1) == 1 and
        (array[i].split("e").length - 1) == 1 and
        (array[i].split("i").length - 1) == 1 and
        (array[i].split("o").length - 1) == 1 and
        (array[i].split("u").length - 1) == 1))
        filtered.push(array[i])
    end

puts filtered

end
