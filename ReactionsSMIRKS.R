reactions_smirks <- list(
  
  list(
    id = "bt0434_4149",
    name = "Hemiacetal Cleavage",
    smirks = "[#6:4]-[#8:1]-[#6:3](-[#6:5])-[#8;D1:2]>>[#6:4]-[#8:1].[#6:5]-[#6:3]=[O:2]",
    trigger_smarts = "[#6]-[#8]-[#6](-[#6])-[#8;D1]",
    description = "Hemiacetal cleaves to alcohol and aldehyde"
  ),
  
  list(
    id = "bt0346_2639",
    name = "5-Hydroxyoxepan-2-one to 5-(2-Hydroxyethyl)oxolan-2-one",
    smirks = "[#8;D1:8]-[#6:5]1[#6:6][#6;D2:7][#8:1][#6:2](=[O:9])[#6;D2:3][#6:4]1>>[#8:8]-[#6:7]-[#6:6]-[#6:5]-1-[#6:4]-[#6:3]-[#6:2](=[O:9])-[#8:1]-1",
    trigger_smarts = "[#8;D1]-[#6]1[#6][#6;D2][#8][#6](=O)[#6;D2][#6]1",
    description = "Ring contraction of 5-hydroxyoxepan-2-one derivative to 5-(2-hydroxyethyl)oxolan-2-one derivative"
  ),
  
  list(
    id = "bt0350_3318",
    name = "Formamidine Cleavage (variant 1)",
    smirks = "[#6:6]-[#7:3]-[#6:2]=[#7:1]-[#6:5]>>[#6:5]-[#7:1].[#6:6]-[#7:3]-[#6:2]=O",
    trigger_smarts = "[#6]-[#7]-[#6]=[#7]-[#6]",
    description = "Formamidine cleaves to amine and amide (methyl or amine derivative)"
  ),
  
  list(
    id = "bt0350_3319",
    name = "Formamidine Cleavage (variant 2)",
    smirks = "[#6:6]-[#7:3]-[#6:2]=[#7:1]-[#6:5]>>[#6:5]-[#7:1]-[#6:2]=O.[#6:6]-[#7:3]",
    trigger_smarts = "[#6]-[#7]-[#6]=[#7]-[#6]",
    description = "Formamidine cleaves to amide and amine (alternate fragmentation)"
  ),
  
  list(
    id = "bt0026_4218",
    name = "Acid Chloride / Carbonochloridate Hydrolysis",
    smirks = "Cl[#6:1](-[#6,#8:4])=[O:5]>>[#8-]-[#6:1](-[#6,#8:4])=[O:5]",
    trigger_smarts = "ClC(=O)[#6,#8]",
    description = "Carbonochloridate or acid chloride hydrolyzes to carboxylate or mono carbonate"
  ),
  
  list(
    id = "bt0386_3347",
    name = "N-(Dichloromethylsulfanyl)aniline Cleavage",
    smirks = "[Cl:10][C:9]([Cl:11])([#1,#9:12])[#16;X2:2]-[#7:1]-[c:8]1[c:3][c:4][c:5][c:6][c:7]1>>[#7:1]-[c:8]1[c:3][c:4][c:5][c:6][c:7]1.[#16;X2:2][C:9]([Cl:11])([Cl:10])[#1,#9:12]",
    trigger_smarts = "[Cl]C([Cl])[S]-[#7]-c1ccccc1",
    description = "Cleavage of N-(dichloromethylsulfanyl)aniline to aniline derivative and dichloromethylsulfide"
  ),
  
  list(
    id = "bt0044_3232",
    name = "Enol to Keto Tautomerism",
    smirks = "[#8;D1:2]-[#6:3]=[#6:1]>>[#6:1]-[#6:3]=[O:2]",
    trigger_smarts = "[#8;D1]-[#6]=[#6]",
    description = "Enol tautomerizes to keto form"
  ),
  
  list(
    id = "bt0384_4048",
    name = "Mono Carbonate Hydrolysis",
    smirks = "[#8-]-[#6](=O)-[#8:1]-[#6,#7:2]>>[#8:1]-[#6,#7:2]",
    trigger_smarts = "[#8-]C(=O)[#8][#6,#7]",
    description = "Mono carbonate cleaves to alcohol or amine"
  ),
  
  list(
    id = "bt0110_3663",
    name = "Isocyanate Hydration to Carbamate",
    smirks = "[#6:2]-[#7:3]=[C:4]=[O:5]>>[#6:2]-[#7:3]-[#6:4](-[#8-])=[O:5]",
    trigger_smarts = "[#6]-[#7]=C=O",
    description = "Isocyanate hydrates to carbamate"
  ),
  
  list(
    id = "bt0438_4230",
    name = "Phenylacetate to 2-Oxepin-2(3H)-ylideneacetate",
    smirks = "[#8-:11]-[#6:9](=[O:10])-[#6;D2:1]-c1[c;D2][c;D2][c;D2][c;D2][c;D2]1>>[#8-:11]-[#6:9](=[O:10])\\[#6:1]([H])=[C]-1\\[C]([H])([H])-[C]([H])=[C]([H])-[C]([H])=[C]([H])-[#8]-1",
    trigger_smarts = "[#8-]C(=O)[#6;D2]c1ccccc1",
    description = "Phenylacetate undergoes ring opening to 2-oxepin-2(3H)-ylideneacetate"
  ),
  
  list(
    id = "bt0330_3930",
    name = "1-Halo-s-Triazine to 1-Hydroxy-s-Triazine (variant 1)",
    smirks = "[#9,#17]-[c:1]1[n:4][c:5](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C](-O)=O),$([N]C([C])([C])C#N),$([N](-[C]-[C])-[C]-[C]),$([N]C([C])([C])[C]),$([N]):6])[n:7][c:8](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C]-[C]-O-[C]),$([N]-[C]-[C](=O)-O-[C]-[C]),$([N]-[C](-[C]-[C])-[C]-[C]),$([N]-[C](-[C])-[C]-[C]),$(O):9])[n:10]1>>[#8]-[c:1]1[n:4][c:5](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C](-O)=O),$([N]C([C])([C])C#N),$([N](-[C]-[C])-[C]-[C]),$([N]C([C])([C])[C]),$([N]):6])[n:7][c:8](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C]-[C]-O-[C]),$([N]-[C]-[C](=O)-O-[C]-[C]),$([N]-[C](-[C]-[C])-[C]-[C]),$([N]-[C](-[C])-[C]-[C]),$(O):9])[n:10]1",
    trigger_smarts = "[#9,#17]c1ncncn1",
    description = "Halogen on s-triazine replaced by hydroxyl group"
  ),
  
  list(
    id = "bt0330_3931",
    name = "1-Methoxy-s-Triazine to 1-Hydroxy-s-Triazine (variant 2)",
    smirks = "[#6;D1]-[#8:1]-[c:3]1[n:4][c:5](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]C([C])([C])[C]),$([N]-[C]-[C]-[C]-O-[C]):6])[n:7][c:8](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C]-[C]-O-[C]),$([N]-[C](-[C])-[C]-[C]),$([N]):9])[n:10]1>>[#8:1]([H])-[c:3]1[n:4][c:5](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]C([C])([C])[C]),$([N]-[C]-[C]-[C]-O-[C]):6])[n:7][c:8](-[$([N]-[C]-[C]),$([N]-[C](-[C])-[C]),$([N]-[C]-[C]-[C]-O-[C]),$([N]-[C](-[C])-[C]-[C]),$([N]):9])[n:10]1",
    trigger_smarts = "[#6;D1][#8]c1ncncn1",
    description = "Methoxy group on s-triazine hydrolyzed to hydroxy group"
  ),
  
  list(
    id = "bt0330_3929",
    name = "1-Amino-s-Triazine to 1-Hydroxy-s-Triazine (variant 3)",
    smirks = "[H][#7]([H])-[c:1]1[n:6][c:7](-[$([N]-[C]-1-[C]-[C]-1),$(O),$([N]):8])[n:9][c:10](-[$([N]),$(O),$(Cl):11])[n:12]1>>[#8]-[c:1]1[n:6][c:7](-[$([N]-[C]-1-[C]-[C]-1),$(O),$([N]):8])[n:9][c:10](-[$([N]),$(O),$(Cl):11])[n:12]1",
    trigger_smarts = "[#7;H2]c1ncncn1",
    description = "Amino group on s-triazine replaced by hydroxyl group"
  ),
  
  list(
    id = "bt0351_3944",
    name = "1-Amino-2-Hydroxybenzenoid Ring Cleavage",
    smirks = "[#7;AH2][c:6]1[c;R1:5][c;R1:4][c;R1:3][c;R1:2][c:1]1-[#8;D1:7]>>[#8-:7]-[#6:1](=O)-[#6:6](=O)-[#6:5]-[#6:4]=[#6:3].[#8-]-[#6:2]=O",
    trigger_smarts = "[#7;AH2]c1ccccc1[#8;D1]",
    description = "1-Amino-2-hydroxybenzenoid ring cleaved to 2-oxopent-4-enoate and carboxylate"
  ),
  
  list(
    id = "bt0343_2675",
    name = "p-Aminobenzoate / p-Hydroxybenzoate Decarboxylation",
    smirks = "[#8-]-[#6](=O)-[c:1]1[c:6][c;D2:7][c:8](-[#7H2,#8H1:9])[c;D2:10][c:11]1>>[#8]([H])-[c:1]1[c:6][c:7]([H])[c:8](-[#7H2,#8H1:9])[c:10]([H])[c:11]1",
    trigger_smarts = "[#8-]C(=O)c1ccc([#7H2,#8H1])cc1",
    description = "Decarboxylation of p-aminobenzoate or p-hydroxybenzoate to phenol/aniline"
  ),
  
  list(
    id = "bt0405_3633",
    name = "Hydrazonoethanoate Cleavage",
    smirks = "[#8-:9]-[#6:7](=[O:8])\\[#6:2]=[#7:1]/[#7:6]-[#6:4]=[O:5]>>[#7:1]-[#7:6]-[#6:4]=[O:5].[#8-:9]-[#6:7](=[O:8])-[#6:2]=O",
    trigger_smarts = "[#8-]C(=O)C=[#7][#7]C=O",
    description = "Hydrazonoethanoate cleaves to formylhydrazine and glyoxylate"
  ),
  
  list(
    id = "bt0024_2218",
    name = "Ester / Lactone Hydrolysis",
    smirks = "[#6:2]-[#8:1]-[#6:6](-[#1,#6:3])=[O:7]>>[H][#8]-[#6:2].[#8-:1]-[#6:6](-[#1,#6:3])=[O:7]",
    trigger_smarts = "[#6][#8]C(=O)[#1,#6]",
    description = "Ester or lactone hydrolyzed to alcohol and carboxylate"
  ),
  
  list(
    id = "bt0385_3220",
    name = "Disubstituted Carbonate Hydrolysis",
    smirks = "[#6:2]-[#8:1]-[#6](=O)-[#8:4]-[#6:6]>>[#6:2]-[#8:1].[#6:6]-[#8:4]",
    trigger_smarts = "[#6][#8]C(=O)[#8][#6]",
    description = "Disubstituted carbonate hydrolyzes to two alcohols"
  ),
  
  list(
    id = "bt0034_2448",
    name = "Nitroso to Hydroxylamine (variant 1)",
    smirks = "[#6:5]-[#7;D2:2]=[O:1]>>[H][#8:1]-[#7:2]([H])-[#6:5]",
    trigger_smarts = "[#6][#7;D2]=O",
    description = "Nitroso compound reduced to hydroxylamine"
  ),
  
  list(
    id = "bt0034_4082",
    name = "Nitroso to Hydroxylamine (variant 2)",
    smirks = "[#6:3]-[#7;v3:2]=[O:1]>>[#6:3]-[#7;v3:2]-[#8:1]",
    trigger_smarts = "[#6][#7;v3]=O",
    description = "Nitroso reduced to hydroxylamine (alternate valence match)"
  ),
  
  list(
    id = "bt0428_3946",
    name = "4-Amino-1,2,4-Triazinone Deamination",
    smirks = "[#7;AH2][n:1]1[c:4][n:8][n:7][c:6][c:5]1=[O:9]>>[H][n:1]1[c:4][n:8][n:7][c:6][c:5]1=[O:9]",
    trigger_smarts = "[#7;AH2]n1cnnncc1=O",
    description = "4-Amino group on triazinone replaced by hydrogen"
  ),
  
  list(
    id = "bt0275_899",
    name = "DDT Dehydrohalogenation",
    smirks = "[C;D3:6]([c:12]1[c:11][c:10][c:9](-[#9,#17,#35,#53:19])[c:8][c:7]1)([c:13]1[c:14][c:18][c:17](-[#9,#17,#35,#53:20])[c:16][c:15]1)[C:5]([#1,#17,#35,#53])([#1,#17,#35,#53:3])[#1,#17,#35,#53:4]>>[#1,#17,#35,#53:3]\\[#6:5](-[#1,#17,#35,#53:4])=[#6:6](\\[c:12]1[c:11][c:10][c:9](-[#9,#17,#35,#53:19])[c:8][c:7]1)-[c:13]1[c:14][c:18][c:17](-[#9,#17,#35,#53:20])[c:16][c:15]1",
    trigger_smarts = "C(c1ccc([#9,#17,#35,#53])cc1)(c1ccc([#9,#17,#35,#53])cc1)C([#1,#17,#35,#53])([#1,#17,#35,#53])[#1,#17,#35,#53]",
    description = "1-Chlorinated-2,2-bis-(4-chlorophenyl)ethane dehydrohalogenates to bis-(4-chlorophenyl)ethylene"
  ),
  
  list(
    id = "bt0064_3707",
    name = "1-Hydroxy-4-unsubstituted Benzenoid Para-Hydroxylation",
    smirks = "[#8;D1:9]-[c:4]1[c;R1:5][c;R1:6][c;D2:1][c;R1:7][c;R1:8]1>>[#8:9]-[c:4]1[c;R1:5][c;R1:6][c:1](-[#8])[c;R1:7][c;R1:8]1",
    trigger_smarts = "[#8;D1]c1ccc([H])cc1",
    description = "Para-hydroxylation of 1-hydroxy-4-unsubstituted benzenoid to 1,4-dihydroxybenzenoid"
  ),
  
  list(
    id = "bt0389_3302",
    name = "Phenylcarbamate Hydrolysis",
    smirks = "[#7:3]-[#6](=O)-[#8:2]-[c:1]1[c:6][c:7][c:8][c:9][c:10]1>>[#8:2]-[c:1]1[c:10][c:9][c:8][c:7][c:6]1.[#7:3]",
    trigger_smarts = "[#7]C(=O)[#8]c1ccccc1",
    description = "Phenylcarbamate hydrolyzes to phenol and amine"
  ),
  
  list(
    id = "bt0027_3456",
    name = "Primary Amide Hydrolysis",
    smirks = "[#6:5]-[#6:1]([#7;AH2])=[O:4]>>[#6:5]-[#6:1](-[#8-])=[O:4]",
    trigger_smarts = "[#6]C([#7;AH2])=O",
    description = "Primary amide hydrolyzed to carboxylate"
  ),
  
  list(
    id = "bt0416_4253",
    name = "vic-Dihydronaphthalene Dihydroxylation (variant 1)",
    smirks = "[#6:5]-1-[#6:6]-[c:7]2[c:9][c:10][c:11][c:12][c:8]2-[#6;D2:1]=[#6;H1:2]-1>>[#8]-[#6:2]([H])-1-[#6:5]-[#6:6]-[c:7]2[c:9][c:10][c:11][c:12][c:8]2-[#6:1]([H])-1-[#8]",
    trigger_smarts = "[#6]1[#6]c2ccccc2[#6;D2]=[#6;H1]1",
    description = "vic-Dihydronaphthalene dihydroxylated to vic-dihydroxytetrahydronaphthalene"
  ),
  
  list(
    id = "bt0416_4269",
    name = "vic-Dihydronaphthalene Dihydroxylation (variant 2)",
    smirks = "[#6:2]([H])1=,:[#6:1]([H])[c:5]2[c:11][c:10][c:9][c:8][c:4]2[#6,#7,#8,#16:3]1>>[#8]([H])-[#6:2]-1-[#6,#7,#8,#16:3]-[c:4]2[c:8][c:9][c:10][c:11][c:5]2-[#6:1]-1-[#8]([H])",
    trigger_smarts = "[#6;H1]1=,:[#6;H1]c2ccccc2[#6,#7,#8,#16]1",
    description = "vic-Dihydronaphthalene dihydroxylated (alternate substitution pattern)"
  ),
  
  list(
    id = "bt0351_4118",
    name = "vic-Dihydroxybenzenoid Ring Cleavage (variant 1)",
    smirks = "[#6:7]-[c:6]1[c:5]([H])[c:4](-[#8:10]([H]))[c:3]([H])[c:2](-[#8:9]([H]))[c:1]1-[#8:8]([H])>>[#6:5]-[#6:4](=[O:10])-[#6:3]-[#6:2](=[O:9])-[#6:1](-[#8-])=[O:8].[#6:7]-[#6:6](-[#8-])=O",
    trigger_smarts = "[#6]c1c([H])c([#8;H1])c([H])c([#8;H1])c1[#8;H1]",
    description = "vic-Dihydroxybenzenoid ring cleaved to ring-opened carboxylate products"
  ),
  
  list(
    id = "bt0351_2780",
    name = "vic-Dihydroxybenzenoid Ring Cleavage (variant 2)",
    smirks = "[#8:8]([H])-[c:1]1[c;R1:6][c;R1:5][c;R1:4][c:3](-[#6](-[#8-])=O)[c:2]1-[#8:7]([H])>>[#8]-[#6:1](=[O:8])-[#6:2](=[O:7])-[#6:3]-[#6:4]=[#6:5].[#8-]-[#6:6]=O",
    trigger_smarts = "[#8;H1]c1ccccc1[#8;H1]",
    description = "vic-Dihydroxybenzenoid ring cleaved to 2-oxopent-4-enoate and carboxylate"
  ),
  
  list(
    id = "bt0351_3908",
    name = "vic-Dihydroxybenzenoid Ring Cleavage (variant 3)",
    smirks = "[#8:2]([H])-[c:12]1[c:7](-[#8:1]([H]))[c;R1:8]([#1,#6,#9,#17,#35,#53;A:3])[c;R1:9](-[!#16,#1:6])[c;R1:10](-[!#8!#16,#1:5])[c;R1:11]1-[#1,#6,#7:4]>>[!#8!#16,#1:5]\\[#6:10]=[#6:9](/[!#16,#1:6])-[#6:8]([#1,#6,#9,#17,#35,#53;A:3])-[#6:7](=[O:1])-[#6:12](-[#8-:2])=O.[#8-]-[#6:11](-[#1,#6,#7:4])=O",
    trigger_smarts = "[#8;H1]c1c([#8;H1])cccc1",
    description = "vic-Dihydroxybenzenoid cleaved with substituent-dependent fragmentation"
  ),
  
  list(
    id = "bt0351_3138",
    name = "vic-Dihydroxybenzenoid Ring Cleavage (variant 4)",
    smirks = "[#8:1]([H])-[#6:2](-[#6:9](-[#8-:10])=[O:11])=[#6:3](-[#1,#6,#17:12])-[#6:4]=[#6:5]-[#6](-[#8-])=O>>[#8-:10]-[#6:9](=[O:11])-[#6:2](=[O:1])-[#6:3](-[#1,#6,#17:12])-[#6:4]=[#6:5]",
    trigger_smarts = "[#8;H1][#6](=O)[#6]=[#6]-[#6]=[#6]",
    description = "Ring-opened hydroxymuconate intermediate further processed"
  ),
  
  list(
    id = "bt0351_3769",
    name = "vic-Dihydroxybenzenoid Ring Cleavage (variant 5)",
    smirks = "[#8:7]([H])-[#6:6](-[#6:8](-[#8-:9])=[O:10])=[#6:5](-[#1,#6,#17:11])-[#6:1]=[#6:2]-[#6;R0:3](-[#1,#6,#16:13])=[O:12]>>[#8-:9]-[#6:8](=[O:10])-[#6:6](=[O:7])-[#6:5](-[#1,#6,#17:11])-[#6:1]=[#6:2].[#8-]-[#6:3](-[#1,#6,#16:13])=[O:12]",
    trigger_smarts = "[#8;H1][#6](=[#6])[#6]=[#6]C(=O)",
    description = "Ring-opened muconate derivative cleaved to oxaloacetate and carboxylate"
  ),
  
  list(
    id = "bt0061_2451",
    name = "N-aliphatic-hydroxy-s-Triazine Deamination",
    smirks = "[#8;D1:9]-[c:4]1[n:5][c:6][n:7][c:2](-[#7:1]-[#6:11])[n:8]1>>[#8:9]-[c:4]1[n:5][c:6][n:7][c:2](-[#8])[n:8]1.[H][#7:1]-[#6:11]",
    trigger_smarts = "[#8;D1]c1nc([#7][#6])ncn1",
    description = "N-aliphatic substituent on hydroxy-s-triazine replaced by hydroxyl"
  ),
  
  list(
    id = "bt0035_1206",
    name = "Aromatic Hydroxylamine to Amine",
    smirks = "[#8;D1]-[#7;H1:1]-[c:9]1[c:8][c:7][c:12][c:11][c:10]1>>[H][#7:1]([H])-[c:9]1[c:8][c:7][c:12][c:11][c:10]1",
    trigger_smarts = "[#8;D1][#7;H1]c1ccccc1",
    description = "Aromatic hydroxylamine reduced to primary amine"
  ),
  
  list(
    id = "bt0337_3544",
    name = "Fatty Acid Beta-Oxidation (3-OH variant)",
    smirks = "[H:6][#6;A;!$(C(C(=O)O)CC=,-O):1]([$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):7])([#6:2]([H])(-[#6:3])-[#8:4]([H]))[#6:8](-[#8-:9])=[O:10]>>[H:6][#6:1](-[$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):7])-[#6:8](-[#8-:9])=[O:10].[#6:3]-[#6:2](-[#8-])=[O:4]",
    trigger_smarts = "[#6][#6]([H])([#6])[#8;H1]",
    description = "Beta-oxidation of fatty acid with 3-OH to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0337_3542",
    name = "Fatty Acid Beta-Oxidation (saturated variant)",
    smirks = "[H:6][#6;A;!$(C(C(=O)O)CC=,-O):1]([$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):7])([#6:2]([H])([H])-[#6:3])[#6:8](-[#8-:9])=[O:10]>>[H:6][#6:1](-[$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):7])-[#6:8](-[#8-:9])=[O:10].[#6:3]-[#6:2](-[#8-])=O",
    trigger_smarts = "[#6][#6]([H])([H])[#6]",
    description = "Beta-oxidation of saturated fatty acid to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0337_3545",
    name = "Fatty Acid Beta-Oxidation (3-keto variant)",
    smirks = "[H:4][#6;A;!$(C(C(=O)O)CC=,-O):1]([$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):6])([#6:2](-[#6:3])=[O:7])[#6:8](-[#8-:9])=[O:10]>>[H:4][#6:1](-[$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):6])-[#6:8](-[#8-:9])=[O:10].[#6:3]-[#6:2](-[#8-])=[O:7]",
    trigger_smarts = "[#6][#6](=O)[#6]",
    description = "Beta-oxidation of 3-keto fatty acid to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0337_3543",
    name = "Fatty Acid Beta-Oxidation (2,3-unsaturated variant)",
    smirks = "[#6:3]\\[#6:2]([H])=[#6:1](/[$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):6])-[#6:7](-[#8-:8])=[O:9]>>[#8-:8]-[#6:7](=[O:9])-[#6:1]-[$([H]),$([#6;H3]),$([#6;H2]-[C](-[O-])=O):6].[#6:3]-[#6:2](-[#8-])=O",
    trigger_smarts = "[#6][#6]([H])=[#6]([H])C(=O)",
    description = "Beta-oxidation of 2,3-unsaturated fatty acid to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0337_4117",
    name = "Fatty Acid Beta-Oxidation (enoyl variant)",
    smirks = "[#1,#6:11]~[#6;A:4](~[#1,#6:12])(~[!#7!#8:6])\\[#6:3]([H])=[#6:2](\\[#1,#6:10]([H])([H])([H]))-[#6:1](-[#8-:8])=[O:9]>>[#1,#6:11]~[#6;A:4](~[#1,#6:12])(~[!#7!#8:6])[#6:3](-[#8-])=O.[#8-:8]-[#6:1](=[O:9])-[#6:2]-[#1,#6:10]([H])([H])([H])",
    trigger_smarts = "[#6][#6]([H])=[#6][#6](=O)",
    description = "Beta-oxidation of enoyl fatty acid to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0337_3901",
    name = "Fatty Acid Beta-Oxidation (cyclic variant)",
    smirks = "[H][#6:2]-1=[#6:1](-[#6:10]-[#6:11]-[#6:12]-[#6:6]-1)-[#6:7](-[#8-:8])=[O:9]>>[#8-:8]-[#6:7](=[O:9])-[#6:1]-[#6:10]-[#6:11]-[#6:12]-[#6:6]-[#6:2](-[#8-])=O",
    trigger_smarts = "[#6;H1]1=[#6][#6][#6][#6][#6]1",
    description = "Beta-oxidation of cyclic fatty acid intermediate to fatty acid (n-2)"
  ),
  
  list(
    id = "bt0005_4282",
    name = "vic-Unsubstituted Aromatic Dihydroxylation (variant 1)",
    smirks = "[c;D2:1]1[c:7][c:10][c:9][c,n;a:8][c;D2:2]1>>[#8]-[c:1]1[c:7][c:10][c:9][c,n;a:8][c:2]1-[#8]",
    trigger_smarts = "[c;D2]1[c][c][c][c,n;a][c;D2]1",
    description = "vic-Dihydroxylation of unsubstituted aromatic ring"
  ),
  
  list(
    id = "bt0005_3776",
    name = "vic-Unsubstituted Aromatic Dihydroxylation (variant 2, naphthalene)",
    smirks = "[c;D2:7]1[c;D2:8][c;D2:9][c:10]2[c;D2:11][c;D2:2][c;D2:1][c;D2:12][c:5]2[c;D2:6]1>>[#8]([H])-[c:1]1[c:12]([H])[c:5]2[c:6]([H])[c:7]([H])[c:8]([H])[c:9]([H])[c:10]2[c:11]([H])[c:2]1-[#8]([H])",
    trigger_smarts = "[c;D2]1[c;D2][c;D2]c2[c;D2][c;D2][c;D2][c;D2]c2[c;D2]1",
    description = "vic-Dihydroxylation of naphthalene-type aromatic ring"
  ),
  
  list(
    id = "bt0005_3667",
    name = "vic-Unsubstituted Aromatic Dihydroxylation (variant 3, dihydrodiol)",
    smirks = "[#8:7]([H])-[#6:1]([H])-1-[#6:2]=[#6:3]-[#6:4]=[#6:5]-[#6:6]([H])-1-[#8:8]([H])>>[#8:7]([H])-[#6:1]=1-[#6:2]=[#6:3]-[#6:4]=[#6:5]-[#6:6]=1-[#8:8]([H])",
    trigger_smarts = "[#8;H1][#6;H1]1[#6]=[#6][#6]=[#6][#6;H1]1[#8;H1]",
    description = "Dihydrodiol aromatization to catechol"
  ),
  
  list(
    id = "bt0102_4062",
    name = "Aromatic Thiophosphate Hydrolysis",
    smirks = "[#6;a:1]-[#8:2][P:4]([#7,#8:6])(=[S:8])[#8:7]-[#6:5]>>[#6;a:1]-[#8:2].[#6:5]-[#8:7][P:4]([#8])([#7,#8:6])=[S:8]",
    trigger_smarts = "[#6;a][#8]P([#7,#8])(=S)[#8][#6]",
    description = "Aromatic thiophosphate or amidothiophosphate hydrolyzes to phenol and thiophosphate"
  ),
  
  list(
    id = "bt0001_3568",
    name = "Primary Alcohol to Aldehyde",
    smirks = "[H][#8:2][C:1]([H:5])([H])[#1,#6:6]>>[H:5][#6:1](-[#1,#6:6])=[O:2]",
    trigger_smarts = "[#8;H1]C([H])[H]",
    description = "Oxidation of primary alcohol to aldehyde"
  ),
  
  list(
    id = "bt0180_2844",
    name = "2-Unsubstituted-3-Methyl-alkyl-CoA Desaturation",
    smirks = "[H][C:2]([#6:5]([H])([H])([H]))([#1,#6:4])!@-[#6:1]([H])([H])-[#6:3](-[#8-:8])=[O:6]>>[#6:5]([H])([H])([H])\\[#6:2](-[#1,#6:4])!@=[#6:1]\\[#6:3](-[#8-:8])=[O:6]",
    trigger_smarts = "[#6;H3][#6]([#1,#6])!@[#6]([H])[H]",
    description = "2-Unsubstituted-3-methyl-alkyl-CoA desaturated to 2,3-didehydroalkyl-CoA"
  ),
  
  list(
    id = "bt0376_4266",
    name = "1-Hydroxyfuran Ring Opening",
    smirks = "[#6:6]-[c;R1:5]1[c:4][c:3][c:2](-[#8:1]([H]))[o:7]1>>[#6:6]-[#6:5](=[O:7])-[#6:4]-[#6:3]-[#6:2](-[#8-])=[O:1]",
    trigger_smarts = "[#6]c1ccco1",
    description = "1-Hydroxyfuran ring opens to 4-oxopentanoate"
  ),
  
  list(
    id = "bt0003_1196",
    name = "Aldehyde to Carboxylate",
    smirks = "[#6;D2:1](-[#6:5])=[O:4]>>[#6:5]-[#6:1](-[#8-])=[O:4]",
    trigger_smarts = "[#6;D2](-[#6])=O",
    description = "Oxidation of aldehyde to carboxylate"
  ),
  
  list(
    id = "bt0014_4215",
    name = "4-Hydroxypyridine / Aromatic Ortho-Hydroxylation",
    smirks = "[c;D2:1]1[c:8][c,n;a:7][c:6][c:5][c:4]1-[#8;D1;!$([O;H1]c1cccc([O;H1])c1):9]>>[#8:9]([H])-[c:4]1[c:5][c:6][c,n;a:7][c:8][c:1]1-[#8]([H])",
    trigger_smarts = "[c;D2]1cc([c,n])ccc1[#8;D1]",
    description = "4-Hydroxypyridine or 1-hydroxy-2-unsubstituted aromatic hydroxylated at ortho position"
  ),
  
  list(
    id = "bt0062_925",
    name = "Aldoxime to Nitrile Dehydration",
    smirks = "[H][#8]-[#7:3]=[#6:4]([H])-[$([#1,*]):6]>>[$([#1,*]):6][C:4]#[N:3]",
    trigger_smarts = "[#8;H1][#7]=[#6;H1]",
    description = "Aldoxime dehydrates to nitrile"
  ),
  
  list(
    id = "bt0104_2854",
    name = "Arylphosphotriester Hydrolysis",
    smirks = "[#8:1][P:4]([#8:6])(=[O:5])[#8:2]-[c:7]:[c:8]>>[#8:2]-[c:7]:[c:8].[#8:1][P:4]([#8:6])([#8])=[O:5]",
    trigger_smarts = "[#8]P([#8])(=O)[#8]c:c",
    description = "Arylphosphotriester or arylphosphodiester hydrolyzes to phenol and phospho derivative"
  ),
  
  list(
    id = "bt0104_2853",
    name = "Arylphosphoester (vinyl) Hydrolysis",
    smirks = "[#8:6][P:4]([#8:8])(=[O:7])[#8:2]-[#6:1]=[#6:5]>>[#6:5]-[#6:1]=[O:2].[#8:6][P:4]([#8:8])([#8])=[O:7]",
    trigger_smarts = "[#8]P([#8])(=O)[#8][#6]=[#6]",
    description = "Arylphosphoester with vinyl linkage hydrolyzes to aldehyde and phosphate"
  ),
  
  list(
    id = "bt0391_4285",
    name = "Imine Hydrolysis",
    smirks = "[#6:4]\\[#6:1]@=[#7:2]\\[#6:5]>>[#6:4]-[#6:1]=O.[#6:5]-[#7:2]",
    trigger_smarts = "[#6][#6]@=[#7][#6]",
    description = "Primary or cyclic imine hydrolyzes to aldehyde/ketone and amine"
  ),
  
  list(
    id = "bt0348_3840",
    name = "Halomaleylacetate / Halocis,cis-Muconate Hydrolytic Dehalogenation (variant 1)",
    smirks = "[#1,#17,#35,#53][#6:3]([#6:4]([#1,#9,#17,#35,#53])=[#6:5]([#1,!#9!#17!#35!#53:14])-[#6:6](-[#8-:8])=[O:7])=[#6:2]([#1,#17,#35,#53])-[#6:1](-[#8-:15])=[O:16]>>[#8-:15]-[#6:1](=[O:16])-[#6:2]-[#6:3]-[#6:4](-[#8-])=O.[#8-:8]-[#6:6](=[O:7])-[#6:5]-[#1,!#9!#17!#35!#53:14]",
    trigger_smarts = "[#1,#17,#35,#53][#6]([#6]([#1,#9,#17,#35,#53])=[#6]C(=O))=[#6][#6](=O)",
    description = "Halomaleylacetate or halomuconate cleaved to succinate and malonate derivatives"
  ),
  
  list(
    id = "bt0348_4120",
    name = "Halomaleylacetate Dehalogenation (thiosulfonate variant)",
    smirks = "[#8-:15]-[#6:1](=[O:16])\\[#6;D3:2]=[#6;H1:3]/[#6:4](=[#6;H1:5]\\[#6:6](-[#8-:8])=[O:7])/S([#8-])(=O)=O>>[#8-:15]-[#6:1](=[O:16])-[#6:2]-[#6:3]-[#6:4](-[#8-])=O.[#6:5]-[#6:6](-[#8-:8])=[O:7]",
    trigger_smarts = "[#8-]C(=O)[#6;D3]=[#6;H1][#6](=[#6;H1]C(=O))S([#8-])(=O)=O",
    description = "Halomaleylacetate with thiosulfonate group cleaved to succinate and acylate"
  ),
  
  list(
    id = "bt0348_4119",
    name = "Halomuconate Dehalogenation (variant 2)",
    smirks = "[#8-:14]-[#6:1](=[O:15])\\[#6:2]([H])=[#6:3]([H])/[#6:4](=[#6:5]([H])\\[#6:6](-[#8-:8])=[O:7])/[#6](-[#8-])=O>>[#8-:14]-[#6:1](=[O:15])-[#6:2]-[#6:3]-[#6:4](-[#8-])=O.[#6:5]-[#6:6](-[#8-:8])=[O:7]",
    trigger_smarts = "[#8-]C(=O)[#6;H1]=[#6;H1][#6](=[#6;H1]C(=O))[#6](=O)",
    description = "cis,cis-Muconate cleaved to succinate and malonate"
  ),
  
  list(
    id = "bt0348_4121",
    name = "Halomuconate Dehalogenation (variant 3)",
    smirks = "[H]\\[#6:4](=[#6:5](/[#1,#17,#35,#53:14])-[#6:6](-[#8-:8])=[O:7])\\[#6:3](\\[#1,#17,#35,#53])=[#6:2](\\[#1,#17,#35,#53])-[#6:1](-[#8-:15])=[O:16]>>[#8-:15]-[#6:1](=[O:16])-[#6:2]-[#6:3]-[#6:4](-[#8-])=O.[#8-:8]-[#6:6](=[O:7])-[#6:5]-[#1,#17,#35,#53:14]",
    trigger_smarts = "[#6;H1](=[#6][#1,#17,#35,#53])[#6]([#1,#17,#35,#53])=[#6][#6](=O)",
    description = "Halomuconate dehalogenated to succinate and halomalonyl derivative"
  ),
  
  list(
    id = "bt0348_4122",
    name = "Halomuconate Dehalogenation (tetrahalo variant)",
    smirks = "[#8-:8]-[#6:6](=[O:7])-[#6:5](\\[#17,#35,#53:14])=[#6:4](\\[#17,#35,#53])/[#6:3](/[#17,#35,#53])=[#6:2](/[#17,#35,#53])-[#6:1](-[#8-:16])=[O:17]>>[#8]-[#6:3](-[#6:2]-[#6:1](-[#8-:16])=[O:17])-[#6:4](-[#8-])=O.[#8-:8]-[#6:6](=[O:7])-[#6:5]-[#17,#35,#53:14]",
    trigger_smarts = "[#8-]C(=O)[#6]([#17,#35,#53])=[#6]([#17,#35,#53])[#6]([#17,#35,#53])=[#6]([#17,#35,#53])[#6](=O)",
    description = "Tetrahalo-cis,cis-muconate dehalogenated to succinate and malonate derivatives"
  ),
  
  list(
    id = "bt0318_4289",
    name = "Carbamate / Carbamyl Hydrolysis (variant 1)",
    smirks = "[H:9][#7:1](-[#6,#16:2])-[#6:3](=[O:7])-[#8:4]!@-[#6,#7:8]>>[H:9][#7:1]([H])-[#6,#16:2].[#8-]-[#6;a:3](=[O:7])-[#8:4]!@-[#6,#7:8]",
    trigger_smarts = "[#7;H1]C(=O)[#8][#6,#7]",
    description = "Carbamate hydrolyzed to amine and carbonate"
  ),
  
  list(
    id = "bt0318_3664",
    name = "Carbamate / Carbamyl Hydrolysis (variant 2)",
    smirks = "[#6:5]-[#7:1]([H])-[#6](-[#8-])=O>>[#6:5]-[#7:1]([H])([H])",
    trigger_smarts = "[#6][#7;H1]C([#8-])=O",
    description = "N-alkyl carbamate hydrolyzed to secondary amine"
  ),
  
  list(
    id = "bt0050_2173",
    name = "Epoxide Ring Opening to Glycol",
    smirks = "[H][#6:1]-1-[#6:2]-[#8:4]-1>>[#8]-[#6:1]-[#6:2]-[#8:4]",
    trigger_smarts = "[#6]1[#6][#8]1",
    description = "Epoxide ring opened to vicinal diol (glycol)"
  ),
  
  list(
    id = "bt0156_3659",
    name = "2,4,6-Trihydroxy-1,3,5-triazine to Biuret",
    smirks = "[#8:7]([H])-[c:2]1[n:3]c(-[#8]([H]))[n:5][c:6](-[#8:8]([H]))[n:1]1>>[H][#7:5]([H])-[#6:6](=[O:8])-[#7:1]([H])-[#6:2](=[O:7])-[#7:3]([H])[H]",
    trigger_smarts = "[#8;H1]c1nc([#8;H1])nc([#8;H1])n1",
    description = "Trihydroxy-s-triazine ring opens to biuret"
  ),
  
  list(
    id = "bt0060_4170",
    name = "vic-Aminocarboxyaromatic / vic-Hydroxycarboxyaromatic to Catechol",
    smirks = "[#8-]-[#6](=O)-[c:1]1[c:12][c:11][c:10][c:9][c:8]1-[#7H2,#8H1]>>[#8]([H])-[c:8]1[c:9][c:10][c:11][c:12][c:1]1-[#8]([H])",
    trigger_smarts = "[#8-]C(=O)c1ccccc1[#7H2,#8H1]",
    description = "vic-Aminocarboxyaromatic or vic-hydroxycarboxyaromatic converted to catechol"
  ),
  
  list(
    id = "bt0219_4295",
    name = "Hydroxyaminal / Hemiaminal Cleavage",
    smirks = "[!#8:5]~[#7:4](~[!#8:6])-[#6:3](-[#8:1]([H]))-[#6,#7:2]>>[!#8:5]~[#7:4]~[!#8:6].[#6,#7:2]-[#6:3]=[O:1]",
    trigger_smarts = "[#7]([!#8])[#6]([#8;H1])[#6,#7]",
    description = "Hemiaminal or hydroxyaminal cleaves to amine and aldehyde/ketone"
  ),
  
  list(
    id = "bt0443_4291",
    name = "Cyanohydrin to Aldehyde",
    smirks = "[#6:5]-[#6;D3:1](-[#8;D1:2])C#N>>[#6:5]-[#6:1]([H])=[O:2]",
    trigger_smarts = "[#6][#6;D3]([#8;D1])C#N",
    description = "Cyanohydrin loses HCN to regenerate aldehyde"
  ),
  
  list(
    id = "bt0398_3470",
    name = "1-Nitro-1,2-Dihydro-1,3,5-Triazine to 1-Nitro-1,3,5-Triazinane-2,4-Diol",
    smirks = "[#8-:11]-[#7+:9](=[O:10])-[#7:8]-1-[#6:7]-[#7:1]=[#6;D2:2]-[#7:3]=[#6;D2:4]-1>>[#8]-[#6:2]-1-[#7:1]-[#6:7]-[#7:8](-[#6:4](-[#8])-[#7:3]-1)-[#7+:9](-[#8-:11])=[O:10]",
    trigger_smarts = "[#8-][#7+](=O)[#7]1[#6][#7]=[#6;D2][#7]=[#6;D2]1",
    description = "1-Nitro-1,2-dihydro-1,3,5-triazine ring rearranges to diol form"
  ),
  
  list(
    id = "bt0255_3670",
    name = "vic-Dihydrodihydroxyaromatic Aromatization",
    smirks = "[#8:7]([H])-[#6:1]([H])-1-[#6:2]=[#6:3]-[#6:4]=[#6:5]-[#6:6]([H])-1-[#8:8]([H])>>[#8:7]([H])-[#6:1]=1-[#6:2]=[#6:3]-[#6:4]=[#6:5]-[#6:6]=1-[#8:8]([H])",
    trigger_smarts = "[#8;H1][#6;H1]1[#6]=[#6][#6]=[#6][#6;H1]1[#8;H1]",
    description = "vic-Dihydrodihydroxyaromatic aromatizes to vic-dihydroxyaromatic"
  ),
  
  list(
    id = "bt0193_4263",
    name = "Disubstituted Sulfoxide to Sulfone",
    smirks = "[#6,#8:3]-,:[#16X3;A;!$([#16+]([C])[C]):1](-,:[#6,#8:2])=[O:5]>>[#6,#8:3][S:1]([#6,#8:2])(=O)=[O:5]",
    trigger_smarts = "[#6,#8][#16X3][#6,#8]",
    description = "Disubstituted sulfoxide oxidized to sulfone"
  ),
  
  list(
    id = "bt0357_2817",
    name = "1,4-Dihydroxybenzenoid to Maleylacetate",
    smirks = "[#8:8]([H])-[c:4]1[c:3]([H])[c:2](-[#1,#17,#35:9])[c:1](-[#8:7]([H]))[c:6](-[#1,#17,#35])[c:5]([H])1>>[#8-]-[#6:6](=O)-[#6:5]-[#6:4](=[O:8])\\[#6:3]=[#6:2](\\[#1,#17,#35:9])-[#6:1](-[#8-])=[O:7]",
    trigger_smarts = "[#8;H1]c1cc([#1,#17,#35])c([#8;H1])cc1",
    description = "1,4-Dihydroxybenzenoid ring cleaved to maleylacetate"
  ),
  
  list(
    id = "bt0063_2552",
    name = "N-Demethylation (quaternary ammonium)",
    smirks = "[#6:7]-[#6:2]([H])[N;X4+:1]([#6:4]([H])([H])([H]))([#6:5]([H])([H])([H]))[#6:6]([H])([H])([H])>>[#6:7]-[#6:2]=O.[#6:5]([H])([H])([H])-[#7;X3:1](-[#6:4]([H])([H])([H]))-[#6:6]([H])([H])([H])",
    trigger_smarts = "[#6][#6;H1][N;X4+]([#6;H3])([#6;H3])[#6;H3]",
    description = "Methylammonium derivative dealkylated to aldehyde and tertiary amine"
  ),
  
  list(
    id = "bt0063_3938",
    name = "N-Dealkylation (tertiary amine)",
    smirks = "[#1,#6:6][#7;X3;!$(NC1CC1)!$([N][C]=O)!$([!#8]CNC=O):1]([#1,#6:7])[#6;A;X4:2][H:3]>>[#1,#6:6][#7;X3:1]([#1,#6:7])[H:3].[#6;A:2]=O",
    trigger_smarts = "[#7;X3][#6;A;X4;H1]",
    description = "N-dealkylation of tertiary/secondary amine to amine and aldehyde/ketone"
  ),
  
  list(
    id = "bt0184_4187",
    name = "2-Hydroxy-5-Aminobenzoate Ring Cleavage",
    smirks = "[#8:12]([H])-[c:7]1[c:6][c:5][c:4](-[$([N]([H])([H])),$([N+](-[O-])=O):13])[c:3][c:2]1-[#6:1](-[#8-:9])=[O:8]>>[#8-:12]-[#6:7](=O)\\[#6:6]=[#6:5]/[#6:4](/[$([N]([H])([H])),$([N+](-[O-])=O):13])=[#6:3]\\[#6:2](=O)-[#6:1](-[#8-:9])=[O:8]",
    trigger_smarts = "[#8;H1]c1cccc([#7H2,#7+]([#8-])=O)c1C(=O)",
    description = "2-Hydroxy-5-amino or 5-nitrobenzoate ring cleaved to dienoate derivative"
  ),
  
  list(
    id = "bt0345_2623",
    name = "2-Oxo-3-enoate-4-Carboxyaromatic Decarboxylation",
    smirks = "[#8-]-[#6](=O)-[#6](=O)\\[#6]=[#6:1]\\[c:13]1[c:12][c:11][c:10][c:9][c:14]1-[#6:15](-[#8-:16])=[O:17]>>[#8-:16]-[#6:15](=[O:17])-[c:14]1[c:9][c:10][c:11][c:12][c:13]1-[#6:1]=O",
    trigger_smarts = "[#8-]C(=O)C(=O)[#6]=[#6]c1ccccc1C(=O)",
    description = "2-Oxo-3-enoate-4-carboxyaromatic decarboxylates to 2-carboxybenzaldehyde"
  ),
  
  list(
    id = "bt0325_3638",
    name = "Thioester Hydrolysis",
    smirks = "[#6:2]-[#16;X2:3]-[#6:4](-[#1,#6:5])=[O:6]>>[H][#16;X2:3]-[#6:2].[#8-]-[#6:4](-[#1,#6:5])=[O:6]",
    trigger_smarts = "[#6][#16;X2]C(=O)",
    description = "Thioester hydrolyzed to thiol and carboxylate"
  ),
  
  list(
    id = "bt0352_2746",
    name = "2-Oxopent-4-enoate Cleavage (chloro variant)",
    smirks = "[#8-:8]-[#6:9](=[O:11])-[#6:10](=[O:12])-[#6:3]!@\\[#6:1]([H])=[#6:2]\\Cl>>[#6:3]-[#6:10](=[O:12])-[#6:9](-[#8-:8])=[O:11].[#8]([H])-[#6:2]-[#6:1](-[#8-])=O",
    trigger_smarts = "[#8-]C(=O)C(=O)[#6][#6;H1]=[#6]Cl",
    description = "2-Oxopent-4-enoate cleaved to pyruvate and glycolate"
  ),
  
  list(
    id = "bt0352_2744",
    name = "2-Oxopent-4-enoate Cleavage (variant 1)",
    smirks = "[!#17,#1:11]\\[#6:2]=[#6:1]([H])!@\\[#6:3]-[#6:8](=[O:10])-[#6:7](-[#8-:6])=[O:9]>>[#6:3]-[#6:8](=[O:10])-[#6:7](-[#8-:6])=[O:9].[#8-]-[#6:1](=O)-[#6:2]-[!#17,#1:11]",
    trigger_smarts = "[#6]=[#6;H1][#6]C(=O)C(=O)",
    description = "2-Oxopent-4-enoate cleaved to pyruvate and carboxylate"
  ),
  
  list(
    id = "bt0352_2745",
    name = "2-Oxopent-4-enoate Cleavage (variant 2)",
    smirks = "[#8-:5]-[#6:6](=[O:8])-[#6:7](=[O:9])-[#6:3]!@-[#6:1](-[*:10])=[#6:2]>>[#6:3]-[#6:7](=[O:9])-[#6:6](-[#8-:5])=[O:8].[#6:2]-[#6:1](-[*:10])=O",
    trigger_smarts = "[#8-]C(=O)C(=O)[#6][#6](=[#6])[*]",
    description = "2-Oxopent-4-enoate cleaved to pyruvate and ketone"
  ),
  
  list(
    id = "bt0352_2748",
    name = "2-Oxopent-4-enoate Cleavage (hydroxy variant)",
    smirks = "[#6:2][C:1]([#8:4]([H]))([*:5])!@-[#6:3]-[#6:8](=[O:10])-[#6:7](-[#8-:6])=[O:9]>>[#6:3]-[#6:8](=[O:10])-[#6:7](-[#8-:6])=[O:9].[#6:2]-[#6:1](-[*:5])=[O:4]",
    trigger_smarts = "[#6][C;H0]([#8;H1])[*][#6]C(=O)C(=O)",
    description = "Hydroxy-substituted 2-oxopent-4-enoate cleaved to pyruvate and ketone"
  ),
  
  list(
    id = "bt0417_3777",
    name = "3-Methyl-cis,cis-Muconate to 4-Methyl-3-Oxoadipate",
    smirks = "[#6:12]\\[#6:3](\\[#6:2]([H])=[#6:1]([H])/[#6:7](-[#8-:11])=[O:10])=[#6:4]([H])\\[#6:6](-[#8-:9])=[O:8]>>[#6:12]-[#6:3](-[#6:4]-[#6:6](-[#8-:9])=[O:8])-[#6:2](=O)-[#6:1]-[#6:7](-[#8-:11])=[O:10]",
    trigger_smarts = "[#6][#6](=[#6;H1]C(=O))[#6;H1]=[#6]C(=O)",
    description = "3-Methyl-cis,cis-muconate cycloisomerizes to 4-methyl-3-oxoadipate"
  ),
  
  list(
    id = "bt0353_4167",
    name = "Monosubstituted Benzenoid Dihydroxylation",
    smirks = "[$(F),$(Cl),$(Br),$(I),$([S](c)-[#6]([H])([H])([H])),$(O(c)-[C]),$([C]),$([N;D3;H0](c)):5]-[c:6]1[c:7]([H])[c:8]([H])[c:9]([H])[c:2]([H])[c:1]([H])1>>[#8]([H])-[c:2]1[c:9]([H])[c:8]([H])[c:7]([H])[c:6](-[$(F),$(Cl),$(Br),$(I),$([S](c)-[#6]([H])([H])([H])),$(O(c)-[C]),$([C]),$([N;D3;H0](c)):5])[c:1]1-[#8]([H])",
    trigger_smarts = "[$(F),$(Cl),$(Br),$(I),$([C]),$([N;D3;H0])]c1ccccc1",
    description = "Monosubstituted benzenoid dihydroxylated at 2,3-position"
  ),
  
  list(
    id = "bt0358_3553",
    name = "Maleylacetoacetate / Maleylpyruvate Isomerization",
    smirks = "[#8-:8]-[#6:1](=[O:9])-[#6:2]=[#6:3]-[#6:4](=[O:10])-[#6:5]-[#6:6](-[$([C](-[O-])=O),$([C]-[C](-[O-])=O):11])=[O:12]>>[#8-:8]-[#6:1](=[O:9])\\[#6:2]=[#6:3]\\[#6:4](-[#8-])=[O:10].[#6:5]-[#6:6](-[$([C](-[O-])=O),$([C]-[C](-[O-])=O):11])=[O:12]",
    trigger_smarts = "[#8-]C(=O)[#6]=[#6]C(=O)[#6]C(=O)",
    description = "Maleylacetoacetate or maleylpyruvate cleaved to fumarate and acetoacetate/pyruvate"
  ),
  
  list(
    id = "bt0385_3220",
    name = "Disubstituted Carbonate Hydrolysis",
    smirks = "[#6:2]-[#8:1]-[#6](=O)-[#8:4]-[#6:6]>>[#6:2]-[#8:1].[#6:6]-[#8:4]",
    trigger_smarts = "[#6][#8]C(=O)[#8][#6]",
    description = "Disubstituted carbonate hydrolyzes to two alcohols"
  ),
  
  list(
    id = "bt0062_925",
    name = "Aldoxime to Nitrile Dehydration",
    smirks = "[H][#8]-[#7:3]=[#6:4]([H])-[$([#1,*]):6]>>[$([#1,*]):6][C:4]#[N:3]",
    trigger_smarts = "[#8;H1][#7]=[#6;H1]",
    description = "Aldoxime dehydrates to nitrile"
  ),
  
  list(
    id = "bt0288_2641",
    name = "5-Hydroxy-3,4,4-Trimethyl-delta2-Pimelyl-CoA Ring Opening",
    smirks = "[H][#6:3](-[#6:5])-[#6:2]-1-[#6:4]~[#6:9]=[#6:8]~[#6:6](=[O:10])-[#8:1]-1>>[#6:5]\\[#6:3]=[#6:2]\\[#6:4]\\[#6:9]=[#6:8]/[#6:6](-[#8-:1])=[O:10]",
    trigger_smarts = "[#6][#6;H1][#6]1[#6]~[#6]=[#6]~[#6](=O)[#8]1",
    description = "Lactone ring opens to delta2,5-trimethylpimelyl-CoA derivative"
  ),
  
  list(
    id = "bt0340_4250",
    name = "1,2-Dihydroxypolyaromatic Ring Cleavage",
    smirks = "[#8:8]([H])-[c:5]1[c;R1:4][c;R1:3]([H])[c;R2:2]2[#6:15][#6:14][#6:13][c:1]2[c:6]1-[#8:7]([H])>>[#8-]-[#6:3](=O)-[#6:2]-1[#6:15][#6:14][#6:13]-[#6:1]-1=O.[#6:4]-[#6:5](=[O:8])-[#6:6](-[#8-:7])=O",
    trigger_smarts = "[#8;H1]c1ccc2cccc2c1[#8;H1]",
    description = "1,2-Dihydroxy-polyaromatic ring cleaved to carboxylate products"
  ),
  
  list(
    id = "bt0386_3347",
    name = "N-(Dichloromethylsulfanyl)aniline Cleavage",
    smirks = "[Cl:10][C:9]([Cl:11])([#1,#9:12])[#16;X2:2]-[#7:1]-[c:8]1[c:3][c:4][c:5][c:6][c:7]1>>[#7:1]-[c:8]1[c:3][c:4][c:5][c:6][c:7]1.[#16;X2:2][C:9]([Cl:11])([Cl:10])[#1,#9:12]",
    trigger_smarts = "[Cl]C([Cl])[S][#7]c1ccccc1",
    description = "Cleavage of N-(dichloromethylsulfanyl)aniline to aminobenzene and dichloromethylsulfide"
  ),
  
  list(
    id = "bt0068_3564",
    name = "N,N-Disubstituted Urea Hydrolysis",
    smirks = "[#7:4]!@-[#6:2](!@-[#7:1])=[O:5]>>[#7:4]-[#6:2](-[#8-])=[O:5].[#7:1]",
    trigger_smarts = "[#7]!@C(!@[#7])=O",
    description = "N,N-disubstituted urea hydrolyzes to carbamate and amine"
  ),
  
  list(
    id = "bt0436_4247",
    name = "4-Substituted Phenol Cleavage to Hydroquinone",
    smirks = "[#6:5][C:2]([#6;A:3])([#6:4]([H])([H])([H]))[c:1]1[c:10]([H])[c:9]([H])[c:8](-[#8:13]([H]))[c:12]([H])[c:11]([H])1>>[#8:13]([H])-[c:8]1[c:9]([H])[c:10]([H])[c:1](-[#8])[c:11]([H])[c:12]([H])1.[#6:5][C:2]([#6;A:3])([#6:4]([H])([H])([H]))[#8]",
    trigger_smarts = "[#6]C([#6])([#6;H3])c1ccc([#8;H1])cc1",
    description = "4-Substituted phenol cleaved to hydroquinone and primary alcohol"
  ),
  
  list(
    id = "bt0366_2930",
    name = "3-Chlorophenylacetate to 3,4-Dihydroxyphenylacetate",
    smirks = "[#8-:13]-[#6:11](=[O:12])-[#6:10]-[c:7]1[c:8][c:9][c:1]([H])[c:2](Cl)[c:6]1>>[#8]-[c:1]1[c:9][c:8][c:7](-[#6:10]-[#6:11](-[#8-:13])=[O:12])[c:6][c:2]1-[#8]",
    trigger_smarts = "[#8-]C(=O)[#6]c1ccc([H])c(Cl)c1",
    description = "3-Chlorophenylacetate dihydroxylated to 3,4-dihydroxyphenylacetate"
  ),
  
  list(
    id = "bt0366_2884",
    name = "4-Halophenylacetate to 3,4-Dihydroxyphenylacetate",
    smirks = "[#8-:13]-[#6:11](=[O:12])-[#6:10]([H])([H])-[c:6]1[c:7][c:8][c:1](-[#9,#17,#35,#53])[c:2]([H])[c:9]1>>[#8]([H])-[c:1]1[c:8][c:7][c:6](-[#6:10]([H])([H])-[#6:11](-[#8-:13])=[O:12])[c:9][c:2]1-[#8]([H])",
    trigger_smarts = "[#8-]C(=O)[#6;H2]c1ccc([#9,#17,#35,#53])cc1",
    description = "4-Halophenylacetate dehalogenated and dihydroxylated to 3,4-dihydroxyphenylacetate"
  ),
  
  list(
    id = "bt0028_3647",
    name = "Cyanamide Hydration to Urea",
    smirks = "[#7:4][C:2]#[N:1]>>[#7:1]([H])([H])-[#6:2](-[#7:4])=O",
    trigger_smarts = "[#7]C#N",
    description = "Cyanamide hydrated to urea derivative"
  ),
  
  list(
    id = "bt0241_3580",
    name = "Tertiary Aliphatic Hydroxylation",
    smirks = "[H:2][C:1]([#6:5])([#6:6])[#6:7]>>[H:2][#8][C:1]([#6:5])([#6:7])[#6:6]",
    trigger_smarts = "[#6;H1]([#6])([#6])[#6]",
    description = "Tertiary aliphatic carbon hydroxylated to tertiary alcohol"
  ),
  
  list(
    id = "bt0227_1872",
    name = "Acylsulfonate Hydrolysis",
    smirks = "[#8-]S(=O)(=O)[#6:2]=[O:4]>>[#8-]-[#6:2]=[O:4]",
    trigger_smarts = "[#8-]S(=O)(=O)[#6]=O",
    description = "Acylsulfonate hydrolyzes to carboxylate and sulfite"
  ),
  
  list(
    id = "bt0349_3022",
    name = "Aromatic Dicarboxylate Decarboxylation (variant 1)",
    smirks = "[#8:5]([H])-[c:6]1[c:7][c:8](-[#6:9](-[#8-:10])=[O:11])[c:1]([c:12][c:13]1-[#1,#8:14]([H]))-[#6](-[#8-])=O>>[#8:5]([H])-[c:6]1[c:7][c:8]([c:1][c:12][c:13]1-[#1,#8:14]([H]))-[#6:9](-[#8-:10])=[O:11]",
    trigger_smarts = "[#8;H1]c1ccc(C(=O))c(C(=O))c1",
    description = "Aromatic dicarboxylate decarboxylates to monocarboxylate"
  ),
  
  list(
    id = "bt0349_3023",
    name = "Aromatic Dicarboxylate Decarboxylation (variant 2)",
    smirks = "[#8:14]([H])-[c:8]1[c:7][c:6][c:5](-[#6:10](-[#8-:12])=[O:11])[c:1](-[#6](-[#8-])=O)[c:9]1-[#8:13]([H])>>[#8:14]([H])-[c:8]1[c:7][c:6][c:5]([c:1][c:9]1-[#8:13]([H]))-[#6:10](-[#8-:12])=[O:11]",
    trigger_smarts = "[#8;H1]c1ccc(C(=O))c(C(=O))c1[#8;H1]",
    description = "Dihydroxyaromatic dicarboxylate decarboxylates to monocarboxylate"
  ),
  
  list(
    id = "bt0349_2798",
    name = "Aromatic Dicarboxylate Decarboxylation (polycyclic variant)",
    smirks = "[#8]-[#6](=O)-[c:1]1[c:17][c:16][c:15][c:7]2[c:6][c:5][c:10]3[c:11][c:14][c:13][c:12](-[#6:18](-[#8:19])=[O:20])[c:9]3[c:8]12>>[#8:19]-[#6:18](=[O:20])-[c:12]1[c:13][c:14][c:11][c:10]2[c:5][c:6][c:7]3[c:15][c:16][c:17][c:1][c:8]3[c:9]12",
    trigger_smarts = "[#8]C(=O)c1cccc2cccc3c(C(=O)[#8])ccc1c23",
    description = "Polycyclic aromatic dicarboxylate decarboxylates to monocarboxylate"
  ),
  
  list(
    id = "bt0349_4276",
    name = "Aromatic Dicarboxylate Decarboxylation (bicyclic variant)",
    smirks = "[#8:15]-[#6:14](=[O:16])-[c:6]1[c:7][c:8][c:9][c:10]2[c:11][c:12][c:13][c:1](-[#6](-[#8])=O)[c:5]12>>[#8:15]-[#6:14](=[O:16])-[c:6]1[c:7][c:8][c:9][c:10]2[c:11][c:12][c:13][c:1][c:5]12",
    trigger_smarts = "[#8]C(=O)c1cccc2cccc(C(=O)[#8])c12",
    description = "Bicyclic aromatic dicarboxylate decarboxylates to monocarboxylate"
  ),
  
  list(
    id = "bt0162_4180",
    name = "Disubstituted Sulfide to Sulfoxide",
    smirks = "[#6:2][#16;D2;!$([#16+]([C])[C]):1][#6,#7:3]>>[#6:2][S:1]([#6,#7:3])=O",
    trigger_smarts = "[#6][#16;D2][#6,#7]",
    description = "Disubstituted sulfide oxidized to sulfoxide"
  ),
  
  list(
    id = "bt0051_3573",
    name = "Beta-Decarboxylation (conjugated variant)",
    smirks = "[#6,#8:6]=,:[#6:5]-[#6;!$(C([#1,#8])([H])(C([O-])=O)c1ccccc1)!$(C(C(=O)[O-])[C;R0]=[C;R0]):1]-[#6](-[#8-])=O>>[#6,#8:6]=,:[#6:5]-[#6:1]",
    trigger_smarts = "[#6,#8]=[#6][#6]C([#8-])=O",
    description = "Beta-decarboxylation of 2- or 3-substituted carboxylate"
  ),
  
  list(
    id = "bt0051_3501",
    name = "Beta-Decarboxylation (heteroatom adjacent)",
    smirks = "[#6:6]-[#6;R0;!$(C(N)(CCC(=O)NC(CS)C(=O)NCC([O-])=O)C([O-])=O):1](-[#7,#8:5])-[#6](-[#8-])=O>>[#6:6]-[#6;R0:1]-[#7,#8:5]",
    trigger_smarts = "[#6][#6]([#7,#8])C([#8-])=O",
    description = "Decarboxylation of amino or hydroxy carboxylate"
  ),
  
  list(
    id = "bt0051_3151",
    name = "Aromatic Decarboxylation",
    smirks = "[O-]-[C](=O)-[c;!$(c1(C(=O)[O-])ccccn1)!$(c1(C(=O)[O-])cccnc1):1](:[#6,#7,#8,#16;a:5]):[c:6]>>[#6,#7,#8,#16;a:5]:[c:1]:[c:6]",
    trigger_smarts = "[#8-]C(=O)c([a])[c]",
    description = "Aromatic carboxylate decarboxylated"
  ),
  
  list(
    id = "bt0051_3093",
    name = "Beta-Decarboxylation (enone variant)",
    smirks = "[H:9][#6:1](-[#6:5]([H])=[#6:6]([H])-[#6:7]=[O:8])-[#6](-[#8-])=O>>[H:9][#6:1]-[#6:5]([H])=[#6:6]([H])-[#6:7]=[O:8]",
    trigger_smarts = "[#6;H1][#6]([H])=[#6;H1][#6]=O",
    description = "Decarboxylation adjacent to enone"
  ),
  
  list(
    id = "bt0080_4217",
    name = "Nitroaromatic to Aminoaromatic",
    smirks = "[#6;a:4]-[#7+:1](-[#8-])=O>>[#6;a:4]-[#7:1]",
    trigger_smarts = "[#6;a][#7+]([#8-])=O",
    description = "Aromatic nitro group fully reduced to amine"
  ),
  
  list(
    id = "bt0158_3361",
    name = "Enol Ether Hydrolysis",
    smirks = "[!#8:7]~[#6:3](-[#6:6])-[#8:2][#6;A:1]=[#6;A:5]>>[#6;A:5][#6;A:1]=[O:2].[!#8:7]~[#6:3](-[#6:6])-[#8]([H])",
    trigger_smarts = "[!#8][#6][#8][#6;A]=[#6;A]",
    description = "Enol ether hydrolyzed to ketone and alcohol"
  ),
  
  list(
    id = "bt0332_3924",
    name = "Aliphatic Methyl Hydroxylation",
    smirks = "[H][C:3]([H:4])([H:5])[#6;$([C]([CH3])-1=[C]-[C]-[C]-[C]-[C]-1),$([C]([CH3])(-[#6;H3])(-[#6;a])-[#6;a]),$([C]([CH3])(-[#9,#17,#35,#53])(-[#9,#17,#35,#53])-[#9,#17,#35,#53]),$([C]([CH3])(-[#6H3])(-[C])-[#6,#8]),$([C]([CH3])(-[C])=O):6]>>[H:4][C:3]([H:5])([#6:6])O",
    trigger_smarts = "[#6;H3][#6]",
    description = "Methyl group on specific aliphatic carbon hydroxylated to primary alcohol"
  ),
  
  list(
    id = "bt0373_3577",
    name = "1,3-Diketone Retro-Claisen Cleavage",
    smirks = "[#6:6]-[#6:2](=[O:7])-[#6;X4:1]-[#6:5]([#6,#16;A:4])=[O:8]>>[#6:1]-[#6:5]([#6,#16;A:4])=[O:8].[#6:6]-[#6:2](-[#8-])=[O:7]",
    trigger_smarts = "[#6]C(=O)[#6;X4]C([#6,#16])=O",
    description = "1,3-Diketone cleaved to ketone and carboxylate"
  ),
  
  list(
    id = "bt0021_3858",
    name = "1-Oxo-2-ene Michael Hydration (variant 1)",
    smirks = "[#6,#8,#16:7]-[#6:5](=[O:6])-[#6:4]-[#6;!$(C(=C)(O)CC([#6,#8,#16])=O):1]=[#6;A:2]>>[#6:2]-[#6:1](-[OH1])-[#6:4]-[#6:5](-[#6,#8,#16:7])=[O:6]",
    trigger_smarts = "[#6,#8,#16]C(=O)[#6][#6]=[#6;A]",
    description = "Water addition to enone to give 3-hydroxy ketone"
  ),
  
  list(
    id = "bt0021_3859",
    name = "1-Oxo-2-ene Michael Hydration (variant 2)",
    smirks = "[#6,#8,#16:6]-[#6:4](=[O:5])[#6:2]=[#6;!$(CO)!$(C=CN[H])!$(C(=C)N[H]):1]>>[#8]([H])-[#6:1]-[#6:2]-[#6:4](-[#6,#8,#16:6])=[O:5]",
    trigger_smarts = "[#6,#8,#16]C(=O)[#6]=[#6]",
    description = "Water addition to alpha,beta-unsaturated carbonyl to give beta-hydroxy carbonyl"
  ),
  
  list(
    id = "bt0388_3311",
    name = "Aromatic Amine to Phenol (ortho-OH variant)",
    smirks = "[#7;AH2][c:2]1[c:8][c:7][c:6][c:5][c:4]1-[#8:9]([H])>>[#8]([H])-[c:2]1[c:8][c:7][c:6][c:5][c:4]1-[#8:9]([H])",
    trigger_smarts = "[#7;AH2]c1ccccc1[#8;H1]",
    description = "Aromatic amine ipso-substituted to phenol in ortho-aminophenol"
  ),
  
  list(
    id = "bt0388_4159",
    name = "Aromatic Amine to Phenol (para-substituted variant)",
    smirks = "[#7;AH2][c:1]1[c:4][c:5][c:6](-[$([O]([H])),$([N+](-[O-])=O):7])[c:8][c:9]1>>[#8]([H])-[c:1]1[c:4][c:5][c:6](-[$([O]([H])),$([N+](-[O-])=O):7])[c:8][c:9]1",
    trigger_smarts = "[#7;AH2]c1ccc([O;H1],[#7+]([#8-])=O)cc1",
    description = "Aromatic amine ipso-substituted to phenol in para-nitroaniline or aminophenol"
  ),
  
  list(
    id = "bt0388_3799",
    name = "Aromatic Amine to Phenol (meta-OH variant)",
    smirks = "[#7;AH2][c:1]1[c:6][c:7][c:8][c:4](-[#8:9]([H]))[c:5]1>>[#8]([H])-[c:1]1[c:6][c:7][c:8][c:4](-[#8:9]([H]))[c:5]1",
    trigger_smarts = "[#7;AH2]c1cccc([#8;H1])c1",
    description = "Aromatic amine ipso-substituted to phenol in 3-aminophenol"
  ),
  
  list(
    id = "bt0023_3854",
    name = "Ether O-Dealkylation",
    smirks = "[H][#6;A:3]!@-[#8:2]!@-[#6:1]>>[#6:1]-[#8:2].[#6;A:3]=O",
    trigger_smarts = "[#6;A][#8][#6]",
    description = "Dialiphatic or aromatic-aliphatic ether dealkylated to alcohol and aldehyde"
  ),
  
  list(
    id = "bt0374_4148",
    name = "Polynuclear Aromatic Dioxygenation and Cleavage (variant 1)",
    smirks = "[O:17]=[#6:1]-1-[c:7]2[c:10][c:11][c:12][c:13][c:8]2-[c:9]2[c:14][c:15][c:16][c:3]([H])[c:2]-12>>[#8]([H])-[c:2]1[c:3](-[#8]([H])([H]))[c:16][c:15][c:14][c:9]1-[c:8]1[c:13][c:12][c:11][c:10][c:7]1-[#6:1](-[#8-])=[O:17]",
    trigger_smarts = "O=[#6]1c2ccccc2c2ccccc21",
    description = "Polynuclear aromatic dioxygenated and cleaved at connecting atom"
  ),
  
  list(
    id = "bt0374_4081",
    name = "Polynuclear Aromatic Dioxygenation and Cleavage (variant 2)",
    smirks = "[H][c:4]1[c:16][c:15][c:14][c:13][c:3]1[#7,#8:2][c:1]1[c:8][c:9][c:10][c:11][c:12]1>>[#7,#8:2]-[c:1]1[c:8][c:9][c:10][c:11][c:12]1.[#8]-[c:4]1[c:16][c:15][c:14][c:13][c:3]1-[#8]",
    trigger_smarts = "[#6;H1]c1ccccc1[#7,#8]c1ccccc1",
    description = "Biaryl ether or amine cleaved with dihydroxylation of one ring"
  ),
  
  list(
    id = "bt0374_3801",
    name = "Polynuclear Aromatic Dioxygenation and Cleavage (variant 3)",
    smirks = "[#17,#35,#53]-[c:4]1[c:16][c:15][c:14][c:13][c:3]1-[#8:2]-[c:1]1[c:8][c:9][c:10][c:11][c:12]1>>[#8:2]([H])-[c:1]1[c:8][c:9][c:10][c:11][c:12]1.[#8]([H])-[c:4]1[c:16][c:15][c:14][c:13][c:3]1-[#8]([H])",
    trigger_smarts = "[#17,#35,#53]c1ccccc1[#8]c1ccccc1",
    description = "Halo-phenyl ether dihydroxylated and cleaved"
  ),
  
  list(
    id = "bt0420_3811",
    name = "Nitroguanidine to Urea",
    smirks = "[#7:9]-[#6:1](=[#7:7])-[#7]([H])-[#7+](-[#8-])=O>>[H][#7:7]-[#6:1](-[#7:9])=O",
    trigger_smarts = "[#7]C(=[#7])[#7;H1][#7+]([#8-])=O",
    description = "Nitroguanidine reduced to urea derivative"
  ),
  
  list(
    id = "bt0210_3411",
    name = "Sulfoaromatic Desulfonation",
    smirks = "[#6;a:2]S([#8-])(=O)=O>>[#6;a:2]-[#8]([H])",
    trigger_smarts = "[#6;a]S([#8-])(=O)=O",
    description = "Aromatic sulfonate replaced by hydroxyl group"
  ),
  
  list(
    id = "bt0383_3210",
    name = "2-Nitrophenol to Catechol",
    smirks = "[#8:11]([H])-[c:10]1[c:9][c:8][c:7][c:6][c:1]1-[#7+](-[#8-])=O>>[#8]([H])-[c:1]1[c:6][c:7][c:8][c:9][c:10]1-[#8:11]([H])",
    trigger_smarts = "[#8;H1]c1ccccc1[#7+]([#8-])=O",
    description = "2-Nitrophenol reduced to catechol"
  ),
  
  list(
    id = "bt0243_4301",
    name = "N-Dealkylation of Amide / Urea",
    smirks = "[#6,#7:6][#6:7](=[O:8])[#7;!$(N(CC)C(=O)C(O)C(C)(C)COP(O)(=O)OP(O)(=O)OCC1OC(C(O)C1OP(O)(O)=O)n1cnc2c(N)ncnc12)!$(NC(CCC(=O)NC(CS)C(=O)NCC([O-])=O)C([O-])=O):1]!@-[#6;A:2][H:3]>>[#6,#7:6][#6:7](=[O:8])[#7:1][H:3].[#6;A:2]=O",
    trigger_smarts = "[#6,#7]C(=O)[#7][#6;A;H1]",
    description = "N-dealkylation of amide or urea to give NH-amide and aldehyde/ketone"
  ),
  
  list(
    id = "bt0362_3080",
    name = "2- or 3-Hydroxypyridine Isomerization (variant 1)",
    smirks = "[#8:8]([H])-[c:5]1[c:4]([H])[c:3]([H])[c:1]([H])[c:7]([H])[n:6]1>>[#8]([H])-[c:1]1[c:3]([H])[c:4]([H])[c:5](-[#8:8]([H]))[n:6][c:7]([H])1",
    trigger_smarts = "[#8;H1]c1cccc([H])n1",
    description = "2-Hydroxypyridine rearranged to 2,5-dihydroxypyridine"
  ),
  
  list(
    id = "bt0362_2882",
    name = "2- or 3-Carboxypyridine Decarboxylation to Hydroxypyridine",
    smirks = "[#8-]-[#6](=O)-[c:5]1[n:13][c:9](-[#1,#8])[c:12]([H])[c:11]([H])[c:1]1-[#1,#8]>>[#8]([H])-[c:1]1[c:11]([H])[c:12]([H])[c:9](-[#8]([H]))[n:13][c:5]([H])1",
    trigger_smarts = "[#8-]C(=O)c1ncc([H])cc1",
    description = "2- or 3-Carboxypyridine decarboxylated to hydroxypyridine"
  ),
  
  list(
    id = "bt0362_3079",
    name = "2- or 3-Carboxypyridine Decarboxylation (variant 2)",
    smirks = "[#8-]-[#6](=O)-[c:1]1[c:9]([H])[c:10]([H])[c:5](-[#1,#8])[n:11][c:12]([H])1>>[#8]([H])-[c:1]1[c:9]([H])[c:10]([H])[c:5](-[#8]([H]))[n:11][c:12]([H])1",
    trigger_smarts = "[#8-]C(=O)c1cc([#1,#8])ncc1",
    description = "Carboxypyridine decarboxylated to dihydroxypyridine (alternate regiochemistry)"
  ),
  
  list(
    id = "bt0427_3943",
    name = "3-Hydroxy-3-Alkylcarboxylate / Ketone Retro-Aldol",
    smirks = "[H][#8:2][C:1]([#6:5])([#6:6])[#6:3]-[#6:7](-[#6,#8:9])=[O:8]>>[#6:5]-[#6:1](-[#6:6])=[O:2].[#6:3]-[#6:7](-[#6,#8:9])=[O:8]",
    trigger_smarts = "[#8;H1]C([#6])([#6])[#6]C([#6,#8])=O",
    description = "Retro-aldol cleavage of 3-hydroxy-3-alkylcarboxylate or ketone"
  ),
  
  list(
    id = "bt0146_3853",
    name = "Diazene Homolysis",
    smirks = "[c:7]1[c:6][c:5][c:3]([c:9][c:8]1)-[#7:1]=[#7:2]-[c:4]1[c:10][c:11][c:12][c:13][c:14]1>>[#7:1]([H])([H])-[c:3]1[c:5][c:6][c:7][c:8][c:9]1.[#7:2]([H])([H])-[c:4]1[c:14][c:13][c:12][c:11][c:10]1",
    trigger_smarts = "c1ccccc1[#7]=[#7]c1ccccc1",
    description = "Diazene cleaved to two aromatic amines"
  ),
  
  list(
    id = "bt0259_3814",
    name = "Thioether Oxygenolysis",
    smirks = "[H][#6:3](-[#1,#6:7])-[#16;v2:1]-[#1,#6,#15:2]>>[#1,#6:7]-[#6:3]=O.[H][#16;v2:1]-[#1,#6,#15:2]",
    trigger_smarts = "[#6;H1][#16;v2]",
    description = "Thioether cleaved to aldehyde and thiol"
  ),
  
  list(
    id = "bt0072_4172",
    name = "1-Carboxy-2-Haloaromatic to 1,2-Dihydroxyaromatic",
    smirks = "[#8-]-[#6](=O)-[c:2](:[c:9]):[c:3](-[#17,#35,#53]):[c:10]>>[#8]-[c:2](:[c:9]):[c:3](-[#8]):[c:10]",
    trigger_smarts = "[#8-]C(=O)c(:c)c([#17,#35,#53]):c",
    description = "1-Carboxy-2-haloaromatic converted to 1,2-dihydroxyaromatic"
  ),
  
  list(
    id = "bt0030_4292",
    name = "Nitrile Hydrolysis to Carboxylate",
    smirks = "[#6:5][C:2]#N>>[#6:5]-[#6:2](-[#8-])=O",
    trigger_smarts = "[#6]C#N",
    description = "Nitrile hydrolyzed to carboxylate"
  ),
  
  list(
    id = "bt0401_3575",
    name = "Hydroquinolin-4-one to Quinolin-3,4-diol",
    smirks = "[#1,#6:12]-[c:8]1[c:9]([H])[c:10](=[O:11])[c:1]2[c:2]([H])[c:3]([H])[c:4]([H])[c:5]([H])[c:6]2[n:7]1>>[#8]([H])-[c:9]1[c:8](-[#1,#6:12])[n:7][c:6]2[c:5]([H])[c:4]([H])[c:3]([H])[c:2]([H])[c:1]2[c:10]1=[O:11]",
    trigger_smarts = "[#1,#6]c1c([H])c(=O)c2ccccc2n1",
    description = "Hydroquinolin-4-one tautomerizes to quinolin-3,4-diol"
  ),
  
  list(
    id = "bt0002_3673",
    name = "Secondary Alcohol Oxidation to Ketone",
    smirks = "[H][#8:1][#6;A;!$(CCC(O)[O-]):2]([H])([#6:5])[#6,#8:6]>>[#6:5]-[#6:2](-[#6,#8:6])=[O:1]",
    trigger_smarts = "[#8;H1][#6;A;H1]([#6])[#6,#8]",
    description = "Secondary alcohol oxidized to ketone"
  ),
  
  list(
    id = "bt0147_3336",
    name = "Alkylphosphonate C-P Bond Cleavage",
    smirks = "[#6:3][P:1]([#8-:4])([$([C]),$([O-]):5])=[O:6]>>[#8-:4][P:1]([#8-])([$([C]),$([O-]):5])=[O:6].[#6:3]",
    trigger_smarts = "[#6]P([#8-])([#6,#8-])=O",
    description = "Alkyl group cleaved from phosphonate to give phosphate and alkane"
  ),
  
  list(
    id = "bt0423_3824",
    name = "Acetophenone Oxidation to Acetate Ester",
    smirks = "[#6:4]([H])([H])([H])-[#6:1](=[O:5])-[c:2]1[c:6]([H])[c:7]([H])[c:8](-[$([O]([H])),$([N]([H])([H])),$([#6;H3]),$(F),$(Cl),$(S([O-])(=O)=O),$([N+](-[O-])=O),$([H]),$(O-[#6;H3]):9])[c:10]([H])[c:11]([H])1>>[#6:4]([H])([H])([H])-[#6:1](=[O:5])-[#8]-[c:2]1[c:6]([H])[c:7]([H])[c:8](-[$([O]([H])),$([N]([H])([H])),$([#6;H3]),$(F),$(Cl),$(S([O-])(=O)=O),$([N+](-[O-])=O),$([H]),$(O-[#6;H3]):9])[c:10]([H])[c:11]([H])1",
    trigger_smarts = "[#6;H3]C(=O)c1ccc([O;H1],[#7H2],[#6;H3],F,Cl,[S])cc1",
    description = "Acetophenone undergoes Baeyer-Villiger to acetylphenol"
  ),
  
  list(
    id = "bt0242_3803",
    name = "Secondary Cyclic Aliphatic Hydroxylation",
    smirks = "[H][#6;A;R1;!$([CR1]([H])([H])([#6;X4])[#6;X4]-[#7,#8]):3]([H:2])([#6;X4:5])[#6;X4:6]>>[H:2][C;R1:3]([#6;X4:5])([#6;X4:6])[#8]",
    trigger_smarts = "[#6;A;R1;H2]([#6;X4])[#6;X4]",
    description = "Cyclic secondary aliphatic carbon hydroxylated to secondary alcohol"
  ),
  
  list(
    id = "bt0242_3804",
    name = "Secondary Aliphatic Hydroxylation (heteroatom adjacent)",
    smirks = "[#7,#8:7]~[#6:5][#6;A;!R!$(CCNC(=O)C(O)C(C)(C)COP(O)(=O)OP(O)(=O)OCC1OC(C(O)C1OP(O)(O)=O)n1cnc2c(N)ncnc12)!$(CCC(=O)NC(CS)C(=O)NCC([O-])=O)!$(CC(=O)NC(CS)C(=O)NCC([O-])=O):3]([H])([H:2])[#6:6]>>[#7,#8:7]~[#6:5][C:3]([H:2])([#6:6])[#8]",
    trigger_smarts = "[#7,#8][#6][#6;A;H2][#6]",
    description = "Aliphatic carbon adjacent to heteroatom hydroxylated"
  ),
  
  list(
    id = "bt0242_3805",
    name = "Secondary Aliphatic Hydroxylation (sp2-adjacent)",
    smirks = "[H][#6;A;!$(CCNC(=O)C(O)C(C)(C)COP(O)(=O)OP(O)(=O)OCC1OC(C(O)C1OP(O)(O)=O)n1cnc2c(N)ncnc12)!$(CCC(=O)NC(CS)C(=O)NCC([O-])=O)!$(CC(=O)NC(CS)C(=O)NCC([O-])=O)!$(C(C!@-,!@=[#7,#8])([H])([H])[C]):3]([H:2])([#6;X3:5])[#6:6]>>[H:2][C:3]([#6;X3:5])([#6:6])[#8]",
    trigger_smarts = "[#6;A;H2]([#6;X3])[#6]",
    description = "Aliphatic carbon adjacent to sp2 carbon hydroxylated"
  ),
  
  list(
    id = "bt0086_4152",
    name = "Primary Nitroalkane to Aldehyde",
    smirks = "[#6:7]-[#6:6]([H])([H])-[#6:1]([H])([H])-[#7+](-[#8-])=O>>[#6:7]-[#6:6]([H])([H])-[#6:1]([H])=O",
    trigger_smarts = "[#6][#6;H2][#6;H2][#7+]([#8-])=O",
    description = "Primary nitroalkane converted to aldehyde with loss of nitrite"
  ),
  
  list(
    id = "bt0078_232",
    name = "Nitrobenzenoid to Hydroxylaminobenzenoid",
    smirks = "[#8-]-[#7+:1](=[O:4])-[c:2]1[c:5][c:6][c:7][c:8][c:9]1>>[H][#8:4]-[#7:1]-[c:2]1[c:5][c:6][c:7][c:8][c:9]1",
    trigger_smarts = "[#8-][#7+](=O)c1ccccc1",
    description = "Aromatic nitro group reduced to hydroxylamine"
  ),
  
  list(
    id = "bt0153_3077",
    name = "2-Hydroxy-3-Aldopyridine Cleavage (variant 1)",
    smirks = "[#8:11]([H])-[c:10]1[n:9][c:6][c:5][c:4][c:1]1-[#6:2](-[#1,#6:7])=[O:8]>>[#8:11]([H])-[c:10]1[c:1][c:4][c:5][c:6][n:9]1.[#8-]-[#6:2](-[#1,#6:7])=[O:8]",
    trigger_smarts = "[#8;H1]c1nccc([H])c1C([#1,#6])=O",
    description = "2-Hydroxy-3-aldopyridine cleaved to 2-hydroxypyridine and carboxylate"
  ),
  
  list(
    id = "bt0153_3078",
    name = "2-Hydroxy-5-Aldopyridine Cleavage (variant 2)",
    smirks = "[#8:11]([H])-[c:6]1[c:5][c:4][c:1]([c:10][n:9]1)-[#6:2](-[#1,#6:7])=[O:8]>>[#8:11]([H])-[c:6]1[c:5][c:4][c:1][c:10][n:9]1.[#8-]-[#6:2](-[#1,#6:7])=[O:8]",
    trigger_smarts = "[#8;H1]c1ccc([H])([#6]([#1,#6])=O)cn1",
    description = "2-Hydroxy-5-aldopyridine cleaved to 2-hydroxypyridine and carboxylate"
  ),
  
  list(
    id = "bt0407_3651",
    name = "Thiol to Sulfinate",
    smirks = "[H][#16;v2:1]-[#6:5]>>[#6:5][S:1]([#8-])=O",
    trigger_smarts = "[#16;v2;H1][#6]",
    description = "Thiol oxidized to sulfinate"
  ),
  
  list(
    id = "bt0431_4039",
    name = "Tricarballylate to cis-Aconitate",
    smirks = "[H][C:2]([H])([#6:1](-[#8-:9])=[O:10])[C:3]([H])([#6:4]([H])([H])-[#6:11](-[#8-:13])=[O:12])[#6:5](-[#8-:15])=[O:14]>>[#8-:13]-[#6:11](=[O:12])-[#6:4]([H])([H])\\[#6:3](=[#6:2]([H])\\[#6:1](-[#8-:9])=[O:10])-[#6:5](-[#8-:15])=[O:14]",
    trigger_smarts = "[#6]([#8-])(=O)[#6;H2][#6;H1]([#6;H2]C([#8-])=O)C([#8-])=O",
    description = "Tricarballylate dehydrated to cis-aconitate"
  ),
  
  list(
    id = "bt0234_3381",
    name = "2,5-Unsubstituted-4-Hydroxyphenylacetate Para-Hydroxylation",
    smirks = "[#8:3]([H])-[c:1]1[c:2]([H])[c:6](-[!#8:14])[c:8](-[#6:9]-[#6:10](-[#8-:12])=[O:11])[c:5]([H])[c:7]1-[!#8:13]>>[#8:3]([H])-[c:2]1[c:1]([H])[c:7](-[!#8:13])[c:5](-[#8]([H]))[c:8](-[#6:9]-[#6:10](-[#8-:12])=[O:11])[c:6]1-[!#8:14]",
    trigger_smarts = "[#8;H1]c1c([H])c([!#8])c([#6]CC(=O))c([H])c1[!#8]",
    description = "4-Hydroxyphenylacetate ortho-hydroxylated to 2,5-dihydroxyphenylacetate"
  ),
  
  list(
    id = "bt0408_3666",
    name = "Amine N-Oxide Reduction",
    smirks = "[#6:1][N+:2]([#6:3])([#6:4])[#8-]>>[#6:1]-[#7:2](-[#6:3])-[#6:4]",
    trigger_smarts = "[#6][N+]([#6])([#6])[#8-]",
    description = "Trisubstituted amine N-oxide reduced to tertiary amine"
  ),
  
  list(
    id = "bt0372_3657",
    name = "2,6-Dihydroxypyridine Hydroxylation",
    smirks = "[#8:8]([H])-[c:7]1[c:1]([H])[c:3][c:4](-[!#8:10])[c:5](-[#8:9]([H]))[n:6]1>>[#8]([H])-[c:1]1[c:3][c:4](-[!#8:10])[c:5](-[#8:9]([H]))[n:6][c:7]1-[#8:8]([H])",
    trigger_smarts = "[#8;H1]c1c([H])cc([!#8])c([#8;H1])n1",
    description = "2,6-Dihydroxypyridine hydroxylated at C3 to 2,3,6-trihydroxypyridine"
  ),
  
  list(
    id = "bt0144_4271",
    name = "Sulfamate / Sulfonamide Hydrolysis",
    smirks = "[#7:1][S:2]([#6,#7,#8:3])(=[O:4])=[O:5]>>[#7:1].[#8-][S:2]([#6,#7,#8:3])(=[O:5])=[O:4]",
    trigger_smarts = "[#7]S([#6,#7,#8])(=O)=O",
    description = "Sulfamate or sulfonamide hydrolyzed to amine and sulfonate"
  ),
  
  list(
    id = "bt0042_4168",
    name = "1-Nitro-2-Unsubstituted Aromatic Dihydroxylation",
    smirks = "[H][c:5]1[c:9][c:12][c:11][c:10][c:4]1-[#7+](-[#8-])=O>>[#8]-[c:4]1[c:10][c:11][c:12][c:9][c:5]1-[#8]",
    trigger_smarts = "[#6;H1]c1ccccc1[#7+]([#8-])=O",
    description = "1-Nitro-2-unsubstituted aromatic dihydroxylated to catechol"
  ),
  
  list(
    id = "bt0023_3819",
    name = "Cyclic Ether O-Dealkylation",
    smirks = "[H][C:4]([#6:7])([#6:8])@-[#8:1]@-[#6:3](-[#6:6])-[#6:9]>>[#6:6]-[#6:3](-[#6:9])-[#8:1].[#6:7]-[#6:4](-[#6:8])=O",
    trigger_smarts = "[#6;H1]([#6])([#6])@[#8]@[#6][#6]",
    description = "Cyclic ether dealkylated to aldehyde/ketone and alcohol"
  ),
  
  list(
    id = "bt0421_3907",
    name = "Formamide Hydrolysis",
    smirks = "[#6:4]-[#7:1]([H])-[#6]([H])=O>>[#6:4]-[#7:1]([H])([H])",
    trigger_smarts = "[#6][#7;H1]C([H])=O",
    description = "Formamide hydrolyzed to amine and formate"
  ),
  
  list(
    id = "bt0011_4163",
    name = "Aromatic Ortho-Hydroxylation",
    smirks = "[H][c:2]1[c,n;a:7][c:6][c:5][c:4][c:8]1!@-[#6:9]>>[#6:9]!@-[c:8]1[c:4][c:5][c:6][c,n;a:7][c:2]1-[#8]([H])",
    trigger_smarts = "[#6;H1]c1([c,n])cccc([H])c1!@[#6]",
    description = "Ortho-hydroxylation of substituted aromatic ring"
  ),
  
  list(
    id = "bt0012_4164",
    name = "Aromatic Meta-Hydroxylation",
    smirks = "[H][c:1]1[c:8][c:4](!@-[#6:9])[c:5][c:6][c,n;a:7]1>>[#6:9]!@-[c:4]1[c:5][c:6][c,n;a:7][c:1](-[#8]([H]))[c:8]1",
    trigger_smarts = "[#6;H1]c1cc(!@[#6])cc([c,n])c1",
    description = "Meta-hydroxylation of monosubstituted benzenoid or substituted pyridine"
  ),
  
  list(
    id = "bt0013_4165",
    name = "Aromatic Para-Hydroxylation",
    smirks = "[H][c:1]1[c:6][c:7][c:4](!@-[#6:9])[c:5][c,n;a:8]1>>[#6:9]!@-[c:4]1[c:7][c:6][c:1](-[#8]([H]))[c,n;a:8][c:5]1",
    trigger_smarts = "[#6;H1]c1ccc(!@[#6])c([c,n])c1",
    description = "Para-hydroxylation of substituted pyridine or monosubstituted benzenoid"
  ),
  
  list(
    id = "bt0403_3595",
    name = "Quinolin-3,4-diol to N-Acetylanthranilate",
    smirks = "[#8]([H])-c1[c:2][n:7][c:9]2[c:13][c:12][c:11][c:10][c:8]2[c:1]1=[O:14]>>[#8-]-[#6:1](=[O:14])-[c:8]1[c:10][c:11][c:12][c:13][c:9]1-[#7:7]-[#6:2]=O",
    trigger_smarts = "[#8;H1]c1c([H])nc2ccccc2c1=O",
    description = "Quinolin-3,4-diol ring opened to N-acetylanthranilate"
  ),
  
  list(
    id = "bt0440_4255",
    name = "Phosphoramidate Hydrolysis",
    smirks = "[#7:1][P:2]([#6,#7,#8,#16:4])([#6,#8:5])=[#8,#16:6]>>[#8]([H])[P:2]([#6,#7,#8,#16:5])([#6,#8:4])=[#8,#16:6].[#7:1]",
    trigger_smarts = "[#7]P([#6,#7,#8,#16])([#6,#8])=[#8,#16]",
    description = "Phosphoramidate hydrolyzed to phosphate and amine"
  ),
  
  list(
    id = "bt0213_3524",
    name = "Benzylsuccinyl-CoA Desaturation",
    smirks = "[#8-:15]-[#6:11](=[O:14])-[#6:3]-[#6:2]([H])(-[#6:1]([H])([H])-[c:4]1[c:6][c:7][c:8][c:9][c:10]1)-[#6:5](-[#8-:13])=[O:12]>>[#8-:15]-[#6:11](=[O:14])-[#6:3]\\[#6:2](=[#6:1]/[c:4]1[c:10][c:9][c:8][c:7][c:6]1)-[#6:5](-[#8-:13])=[O:12]",
    trigger_smarts = "[#8-]C(=O)[#6][#6;H1]([#6;H2]c1ccccc1)C([#8-])=O",
    description = "Benzylsuccinyl-CoA desaturated to E-phenylitaconyl-CoA"
  ),
  
  list(
    id = "bt0429_4043",
    name = "Methoxyamide Hydrolysis",
    smirks = "[#6:2]-[#8:1]-[#7:3](-[#1,#6:4])-[#6:5](-[#6,#8:6])=[O:7]>>[#1,#6:4]-[#7:3]-[#6:5](-[#6,#8:6])=[O:7].[#6:2]-[#8:1]",
    trigger_smarts = "[#6][#8][#7][#6]([#6,#8])=O",
    description = "Methoxyamide hydrolyzed to primary amide and alcohol"
  ),
  
  list(
    id = "bt0070_3850",
    name = "Alkyne to Alkene Reduction",
    smirks = "[C:2]#[C:1]>>[#6:2]=[#6:1]",
    trigger_smarts = "C#C",
    description = "Alkyne partially reduced to alkene"
  ),
  
  list(
    id = "bt0378_3188",
    name = "2,4,6-Trinitrophenol to 2,4-Dinitrocyclohexanone",
    smirks = "[#8-:7]-[c:1]1[c:6]([c:5][c:4]([c:3][c:2]1-[#7+:11](-[#8-:16])=[O:15])-[#7+:12](-[#8-:13])=[O:14])-[#7+](-[#8-])=O>>[#8-:13]-[#7+:12](=[O:14])-[#6:4]-1-[#6:5]-[#6:6]-[#6:1](=[O:7])-[#6:2](-[#6:3]-1)-[#7+:11](-[#8-:16])=[O:15]",
    trigger_smarts = "[#8-]c1c([#7+]([#8-])=O)cc([#7+]([#8-])=O)cc1[#7+]([#8-])=O",
    description = "Picric acid (2,4,6-trinitrophenol) reduced to dinitrocyclohexanone"
  ),
  
  list(
    id = "bt0324_3864",
    name = "Thiophene-2-carboxyl-CoA Reduction",
    smirks = "[#8-:9]-[#6:7](=[O:8])-[c:5]1[c:2][c:4]([H])[c:3]([H])[s:6]1>>[#8-:9]-[#6:7](=[O:8])-[#6:5]-1=[#6:2]-[#6:4]([H])([H])-[#6:3](=O)-[#16:6]-1",
    trigger_smarts = "[#8-]C(=O)c1cccs1",
    description = "Thiophene-2-carboxyl-CoA reduced to 5-oxo-4,5-dihydrothiophene-2-carboxyl-CoA"
  ),
  
  list(
    id = "bt0202_3925",
    name = "Acetophenone Side-Chain Carboxylation",
    smirks = "[H][C:1]([H:14])([H:15])[#6:12](=[O:13])-[c:11]1[c:6][c:7][c:8][c:9][c:10]1>>[H:15][C:1]([H:14])([#6](-[#8-])=O)[#6:12](=[O:13])-[c:11]1[c:6][c:7][c:8][c:9][c:10]1",
    trigger_smarts = "[#6;H3]C(=O)c1ccccc1",
    description = "Acetophenone methyl carboxylated to benzoyl acetate"
  ),
  
  list(
    id = "bt0212_3523",
    name = "2-Aminobenzoyl-CoA Cyclization",
    smirks = "[#7:11]([H])([H])-[c:1]1[c:2][c:3][c:4]([H])[c:5][c:6]1-[#6:8](-[#8-:10])=[O:9]>>[#7:11]([H])([H])-[#6:1]-1=[#6:6](-[#6:5]-[#6:4](=O)-[#6:3]-[#6:2]-1)-[#6:8](-[#8-:10])=[O:9]",
    trigger_smarts = "[#7;H2]c1cccc([H])c1C([#8-])=O",
    description = "2-Aminobenzoyl-CoA cyclized to 2-amino-5-oxo-cyclohex-1-enecarboxy-CoA"
  ),
  
  list(
    id = "bt0108_470",
    name = "1-Nitro-4-Hydroxybenzenoid to 1,4-Dihydroxybenzenoid",
    smirks = "[H:12][#8:11]-[c:8]1[c:4][c:5][c:3]([c:6][c:7]1)-[#7+](-[#8-])=O>>[H:12][#8:11]-[c:8]1[c:4][c:5][c:3](-[#8][H])[c:6][c:7]1",
    trigger_smarts = "[#8;H1]c1ccc([#7+]([#8-])=O)cc1",
    description = "4-Nitrophenol reduced to hydroquinone"
  ),
  
  list(
    id = "bt0058_2811",
    name = "Aliphatic Nitroester Hydrolysis",
    smirks = "[#6:3]-[#8:2]-[#7+](-[#8-])=O>>[#6:3]-[#8:2]",
    trigger_smarts = "[#6][#8][#7+]([#8-])=O",
    description = "Aliphatic nitroester hydrolyzed to alcohol with loss of nitrite"
  ),
  
  list(
    id = "bt0033_1219",
    name = "Nitro to Nitroso (cyclic)",
    smirks = "[#8-]-[#7+:3](=[O:9])-[#7:6]-1-[#6:1]-[#7:7]-[#6:4]-[#7:8]-[#6:5]-1>>[O:9]=[#7:3]-[#7:6]-1-[#6:1]-[#7:7]-[#6:4]-[#7:8]-[#6:5]-1",
    trigger_smarts = "[#8-][#7+](=O)[#7]1[#6][#7][#6][#7][#6]1",
    description = "Cyclic nitro group reduced to nitroso"
  ),
  
  list(
    id = "bt0209_3257",
    name = "4-Unsubstituted Phenol Carboxylation",
    smirks = "[#8:10]([H])-[c:5]1[c:6]([H])[c:7]([H])[c:1]([H])[c:8]([H])[c:9]([H])1>>[#8:10]([H])-[c:5]1[c:6]([H])[c:7]([H])[c:1]([c:8]([H])[c:9]([H])1)-[#6](-[#8-])=O",
    trigger_smarts = "[#8;H1]c1ccccc1",
    description = "Unsubstituted phenol carboxylated at para position to 4-hydroxybenzoate"
  ),
  
  list(
    id = "bt0020_1610",
    name = "Terminal Alkyne to Aldehyde",
    smirks = "[H:3][C:1]#[C:2]>>[H:3][#6:1](-[#6:2])=O",
    trigger_smarts = "[#6;H1]#[#6]",
    description = "Terminal alkyne hydrated to aldehyde (Markovnikov)"
  ),
  
  list(
    id = "bt0320_3863",
    name = "Cyclohexanone Dehydrogenation",
    smirks = "[#6:8]-[#6:3]-1-[#6:4]-[#6:1]([H])([H])-[#6:2]([H])(-[#6:9])-[#6:5](=[O:7])-[#6:6]-1>>[#6:8]-[#6:3]-1-[#6:4]-[#6:1]([H])=[#6:2](-[#6:9])-[#6:5](=[O:7])-[#6:6]-1",
    trigger_smarts = "[#6]C1[#6][#6;H2][#6;H1][#6]C1=O",
    description = "Substituted cyclohexanone dehydrogenated to cyclohexenone"
  ),
  
  list(
    id = "bt0154_1367",
    name = "5-Unsubstituted-1,2,3-Trihydroxybenzenoid Hydroxylation",
    smirks = "[H:11][#8:10]-[c:9]1[c:6][c:1]([H])[c:7][c:8](-[#8:13][H:14])[c:4]1-[#8][H]>>[H:11][#8:10]-[c:9]1[c:6][c:1](-[#8])[c:7][c:8](-[#8:13][H:14])[c:4]1",
    trigger_smarts = "[#8;H1]c1cc([H])cc([#8;H1])c1[#8;H1]",
    description = "5-Unsubstituted-1,2,3-trihydroxybenzenoid hydroxylated to 1,3,5-trihydroxybenzenoid"
  ),
  
  list(
    id = "bt0216_3640",
    name = "Ethylbenzenoid to Styrene Dehydrogenation",
    smirks = "[H][#6:1](-[#6:2]([H])([H])([H]))-[c:4]1[c:5]([H])[c:6]([H])[c:7]([H])[c:8]([H])[c:9]([H])1>>[#6:2]([H])([H])=[#6:1]-[c:4]1[c:9]([H])[c:8]([H])[c:7]([H])[c:6]([H])[c:5]([H])1",
    trigger_smarts = "[#6;H1]([#6;H3])c1ccccc1",
    description = "Ethylbenzenoid dehydrogenated to styrene derivative"
  ),
  
  list(
    id = "bt0295_3520",
    name = "Haloether to Ester",
    smirks = "[H][C:1]([#6:5])([#9,#17,#35,#53])[#8:6]-[#6:7]>>[#6:7]-[#8:6]-[#6:1](-[#6:5])=O",
    trigger_smarts = "[#6;H1]([#6])([#9,#17,#35,#53])[#8][#6]",
    description = "Ether with vicinal halogenated carbon converted to ester"
  ),
  
  list(
    id = "bt0124_3980",
    name = "1-Unsubstituted Phenanthrenoid Hydroxylation",
    smirks = "[H:16][c:1]1[c:15][c:14][c:13][c:12]2[c:11]1[c:9][c:10][c:7]1[c:6][c:3][c:4][c:5][c:8]21>>[H:16][#8]-[c:1]1[c:15][c:14][c:13][c:12]2[c:11]1[c:9][c:10][c:7]1[c:6][c:3][c:4][c:5][c:8]21",
    trigger_smarts = "[#6;H1]c1cccc2c1ccc1ccccc12",
    description = "1-Unsubstituted phenanthrenoid hydroxylated to 1-phenanthrol"
  ),
  
  list(
    id = "bt0392_3341",
    name = "3-Formylpyruvate Cleavage",
    smirks = "[#8-:6]-[#6:5](=[O:7])-[#6:1](=[O:8])-[#6:2]([H])([H])-[#6:3]=[O:9]>>[#6:2]([H])([H])([H])-[#6:1](=[O:8])-[#6:5](-[#8-:6])=[O:7].[#8-]-[#6:3]=[O:9]",
    trigger_smarts = "[#8-]C(=O)C(=O)[#6;H2]C=O",
    description = "3-Formylpyruvate cleaved to pyruvate and formate"
  ),
  
  list(
    id = "bt0327_3585",
    name = "Thioamide S-Oxidation",
    smirks = "[H:5][#7:4]([H:6])-[#6:3]=[S;v2:1]>>[H:6][#7:4]([H:5])\\[#6:3]=[S;v3+:1]/[#8-]",
    trigger_smarts = "[#7;H2]C=[S;v2]",
    description = "Thioamide oxidized to thioamide S-oxide"
  ),
  
  list(
    id = "bt0397_3474",
    name = "RDX Degradation (variant 1)",
    smirks = "[#8-:12]-[#7+:10](=[O:11])-[#7:9]-1-[#6:8]([H])([H])-[#7:7](-[#6:1]([H])([H])-[#7:2](-[#6:6]([H])([H])-1)-[#7+](-[#8-])=O)-[#7+:13](-[#8-:15])=[O:14]>>[#8-:12]-[#7+:10](=[O:11])-[#7:9]-1-[#6:6]([H])([H])-[#7:2]=[#6:1]([H])-[#7:7](-[#6:8]([H])([H])-1)-[#7+:13](-[#8-:15])=[O:14]",
    trigger_smarts = "[#8-][#7+](=O)[#7]1[#6;H2][#7]([#6;H2][#7]([#6;H2]1)[#7+]([#8-])=O)[#7+]([#8-])=O",
    description = "Hexahydro-1,3,5-trinitro-1,3,5-triazine (RDX) degradation step 1"
  ),
  
  list(
    id = "bt0397_3475",
    name = "RDX Degradation (variant 2)",
    smirks = "[#8-]-[#7+](=O)-[#7:2]-1-[#6:1]([H])([H])-[#7:7]=[#6:8]([H])-[#7:9](-[#6:6]([H])([H])-1)-[#7+:10](-[#8-:12])=[O:11]>>[#8-:12]-[#7+:10](=[O:11])-[#7:9]-1-[#6:6]([H])([H])-[#7:2]=[#6:1]([H])-[#7:7]=[#6:8]([H])-1",
    trigger_smarts = "[#8-][#7+](=O)[#7]1[#6;H2][#7]=[#6;H1][#7]([#6;H2]1)[#7+]([#8-])=O",
    description = "RDX degradation step 2 to dinitro-dihydro-triazine"
  ),
  
  list(
    id = "bt0029_3674",
    name = "Organohalide Dehalogenation",
    smirks = "[#6:1]-[#17,#35,#53]>>[#6:1][H]",
    trigger_smarts = "[#6][#17,#35,#53]",
    description = "Organohalide reductively dehalogenated to RH"
  ),
  
  list(
    id = "bt0312_3818",
    name = "1-MethylenecarboxylCoA to 1-MethylcarboxylCoA",
    smirks = "[H:11][C:2]([#1,#6:4])([#6:3]([H])([H])-[#6:10](-[#8-:8])=[O:9])[#6:1](-[#8-:6])=[O:7]>>[H][C:2]([H:11])([#1,#6:4])[#6:3]([H])(-[#6:1](-[#8-:6])=[O:7])-[#6:10](-[#8-:8])=[O:9]",
    trigger_smarts = "[#6]([#1,#6])([#6;H2]C([#8-])=O)C([#8-])=O",
    description = "1-Methylenecarboxyl-CoA isomerized to 1-methylcarboxyl-CoA"
  ),
  
  list(
    id = "bt0291_1129",
    name = "Alkene to Alkane Reduction",
    smirks = "[#6:1]=[#6:2]>>[#6:1]-[#6:2]",
    trigger_smarts = "C=C",
    description = "Alkene reduced to alkane"
  ),
  
  list(
    id = "bt0390_3346",
    name = "N-Methylideneformamide Hydrolysis",
    smirks = "[#6:4]([H])=[#7;R0:1]-[#6]([H])=O>>[#6:4]([H])=[#7;R0:1]",
    trigger_smarts = "[#6;H1]=[#7;R0]C([H])=O",
    description = "N-methylideneformamide hydrolyzed to methanimine derivative"
  ),
  
  list(
    id = "bt0031_1217",
    name = "Benzonitrile to Phenol",
    smirks = "N#C[c:4]1[c:8][c:7][c:6][c:10][c:9]1>>[H][#8]-[c:4]1[c:8][c:7][c:6][c:10][c:9]1",
    trigger_smarts = "N#Cc1ccccc1",
    description = "Benzonitrile hydrolyzed and decarboxylated to phenol"
  ),
  
  list(
    id = "bt0208_3256",
    name = "Phenol Phosphorylation",
    smirks = "[#8:1]([H])-[c:11]1[c:6]([H])[c:7]([H])[c:8]([H])[c:9]([H])[c:10]([H])1>>[#8]P([#8-])(=O)[#8:1]-[c:11]1[c:6]([H])[c:7]([H])[c:8]([H])[c:9]([H])[c:10]([H])1",
    trigger_smarts = "[#8;H1]c1ccccc1",
    description = "Phenol phosphorylated to phenylphosphate"
  ),
  
  list(
    id = "bt0199_3639",
    name = "2-Aminobenzoyl-CoA Deamination",
    smirks = "[#7;AH2][c:1]1[c:7][c:6][c:5][c:4][c:3]1-[#6:9](-[#8-:8])=[O:10]>>[#8-:8]-[#6:9](=[O:10])-[c:3]1[c:4][c:5][c:6][c:7][c:1]([H])1",
    trigger_smarts = "[#7;AH2]c1ccccc1C([#8-])=O",
    description = "2-Aminobenzoyl-CoA deaminated to benzoyl-CoA"
  ),
  
  list(
    id = "bt0192_3861",
    name = "Benzoyl-CoA Ring Reduction",
    smirks = "[#8-:1]-[#6:8](=[O:9])-[c:4]1[c:3]([H])[c:2]([H])[c:7]([H])[c:6]([H])[c:5]([H])1>>[#8-:1]-[#6:8](=[O:9])-[#6:4]-1=[#6:3]-[#6:2]-[#6:7]-[#6:6]=[#6:5]-1",
    trigger_smarts = "[#8-]C(=O)c1ccccc1",
    description = "Benzoyl-CoA ring reduced to cyclohex-1,5-diene-1-carboxy-CoA"
  ),
  
  list(
    id = "bt0439_4270",
    name = "2-Phenylacyl to Catechol",
    smirks = "[H:14][C:3]([#1,#6;A:13])([#6:10](-[#8-:11])=[O:12])[c:1]1[c:6]([H])[c:7][c:8][c:9][c:2]([H])1>>[#8]-[c:1]1[c:6]([H])[c:7][c:8][c:9][c:2]1-[#8].[H:14][#6:3](-[#1,#6:13])-[#6:10](-[#8-:11])=[O:12]",
    trigger_smarts = "[#6;H1]([#1,#6])([#6]C([#8-])=O)c1ccccc1",
    description = "2-Phenylacyl derivative cleaved to catechol and acyl fragment"
  ),
  
  list(
    id = "bt0079_1087",
    name = "Hydroxylaminobenzenoid to Nitrosobenzenoid",
    smirks = "[H][#8:2]-[#7:1]([H])-[c:5]1[c:6][c:9][c:8][c:10][c:7]1>>[O:2]=[#7:1]-[c:5]1[c:6][c:9][c:8][c:10][c:7]1",
    trigger_smarts = "[#8;H1][#7;H1]c1ccccc1",
    description = "Hydroxylaminobenzenoid oxidized to nitrosobenzenoid"
  ),
  
  list(
    id = "bt0430_4011",
    name = "Tertiary Amide Hydrolysis",
    smirks = "[#6:5]-[#7:1](-[#6:7])-[#6:3](-[#1,#6:6])=[O:4]>>[#8-]-[#6:3](-[#1,#6:6])=[O:4].[#6:5]-[#7:1]-[#6:7]",
    trigger_smarts = "[#6][#7]([#6])C([#1,#6])=O",
    description = "Tertiary amide hydrolyzed to carboxylate and secondary amine"
  ),
  
  list(
    id = "bt0435_4212",
    name = "Thiol Desulfurization",
    smirks = "[H:6][C:1]([#6:4])([#16;H1v2])[#1,#6:5]>>[H:6][C:1]([H])([#6:4])[#1,#6:5]",
    trigger_smarts = "[#6;H1]([#6])([#16;H1v2])[#1,#6]",
    description = "Thiol desulfurized to RH with loss of H2S"
  ),
  
  list(
    id = "bt0268_3530",
    name = "1-MethylcarboxylCoA to 1-MethylenecarboxylCoA",
    smirks = "[#6:3]([H])([H])([H])-[#6:2](-[#6:1]([H])([H])([H]))-[#6:4](-[#8-:5])=[O:6]>>[#6:3]([H])([H])([H])-[#6:2]-[#6:1]-[#6:4](-[#8-:5])=[O:6]",
    trigger_smarts = "[#6;H3][#6]([#6;H3])C([#8-])=O",
    description = "1-MethylcarboxylCoA desaturated to 1-methylenecarboxyl-CoA"
  ),
  
  list(
    id = "bt0306_3442",
    name = "Cyclopropanecarboxylate Ring Opening",
    smirks = "[H][#6:2]-1-[#6:3]-[#6:1]-1-[#6:5](-[#8-:7])=[O:6]>>[#6:3]\\[#6:2]=[#6:1]\\[#6:5](-[#8-:7])=[O:6]",
    trigger_smarts = "[#6;H1]1[#6][#6]1C([#8-])=O",
    description = "Cyclopropanecarboxylate ring opened to crotonate derivative"
  ),
  
  list(
    id = "bt0387_3298",
    name = "4-Aminobenzenesulfonate to 4-Hydroxybenzenesulfonate",
    smirks = "[#7;AH2][c:3]1[c:4][c:5][c:6]([c:7][c:8]1)[S:9]([#8-:12])(=[O:10])=[O:11]>>[#8]([H])-[c:3]1[c:4][c:5][c:6]([c:7][c:8]1)[S:9]([#8-:12])(=[O:11])=[O:10]",
    trigger_smarts = "[#7;AH2]c1ccc(S([#8-])(=O)=O)cc1",
    description = "4-Aminobenzenesulfonate ipso-substituted to 4-hydroxybenzenesulfonate"
  ),
  
  list(
    id = "bt0177_3159",
    name = "1-Keto-2-Nitrocyclohexane Ring Opening",
    smirks = "[#8-:11]-[#7+:9](=[O:10])-[#6:1]-1-[#6:7]-[#6:6]-[#6:5]-[#6:4]-[#6:2]-1=[O:8]>>[#8-]-[#6:2](=[O:8])-[#6:4]-[#6:5]-[#6:6]-[#6:7]-[#6:1]-[#7+:9](-[#8-:11])=[O:10]",
    trigger_smarts = "[#8-][#7+](=O)[#6]1[#6][#6][#6][#6]C1=O",
    description = "1-Keto-2-nitrocyclohexane ring opened to nitrohexanoate"
  ),
  
  list(
    id = "bt0230_3525",
    name = "4-Hydroxybenzoyl-CoA Dehydroxylation",
    smirks = "[#8]([H])-[c:1]1[c:4]([H])[c:3][c:7]([c:6][c:5]([H])1)-[#6:8](-[#8-:9])=[O:10]>>[#8-:9]-[#6:8](=[O:10])-[c:7]1[c:3][c:4]([H])[c:1]([H])[c:5]([H])[c:6]1",
    trigger_smarts = "[#8;H1]c1ccc(C([#8-])=O)cc1",
    description = "4-Hydroxybenzoyl-CoA dehydroxylated to benzoyl-CoA"
  ),
  
  list(
    id = "bt0218_3579",
    name = "2-Hydroxyethylamine to Hemiaminal",
    smirks = "[H][#6:3](-[#7:5])-[#6:2]-[#8:1]([H])>>[H][#6:2]-[#6:3](-[#7:5])-[#8:1]([H])",
    trigger_smarts = "[#6;H1]([#7])[#6][#8;H1]",
    description = "2-Hydroxyethylamine rearranged to hemiaminal"
  ),
  
  list(
    id = "bt0270_3922",
    name = "Aromatic Methylsuccinate Formation (variant 1)",
    smirks = "[#1,#6:18][c:14]1[c:13]([H])[c:12]([H])[c:4]([c:16]([H])[c:15]1[#1,#6,#8,#9:17])[C:1]([H:19])([H])[H:20]>>[#1,#6:18][c:14]1[c:13]([H])[c:12]([H])[c:4]([c:16]([H])[c:15]1[#1,#6,#8,#9:17])[C:1]([H:20])([H:19])[#6](-[#6]-[#6](-[#8-])=O)-[#6](-[#8-])=O",
    trigger_smarts = "[#1,#6]c1ccc([#6;H3])c([#1,#6,#8,#9])c1",
    description = "Aromatic methyl group reacts with fumarate to form methylsuccinate (para variant)"
  ),
  
  list(
    id = "bt0270_3921",
    name = "Aromatic Methylsuccinate Formation (variant 2)",
    smirks = "[H][C:1]([H:18])([H:19])[c:4]1[c:12]([H])[c:13]([H])[c:14]([H])[c:15](-[#6,#8,#9:17])[c:16]([H])1>>[H:19][C:1]([H:18])([#6](-[#6]-[#6](-[#8-])=O)-[#6](-[#8-])=O)[c:4]1[c:12]([H])[c:13]([H])[c:14]([H])[c:15](-[#6,#8,#9:17])[c:16]([H])1",
    trigger_smarts = "[#6;H3]c1cccc([#6,#8,#9])c1",
    description = "Aromatic methyl reacts with fumarate to form methylsuccinate (meta variant)"
  ),
  
  list(
    id = "bt0270_3919",
    name = "Aromatic Methylsuccinate Formation (variant 3)",
    smirks = "[H][C:1]([H:18])([H:19])[c:5]1[c:12]([H])[c:13]([H])[c:14](-[#6,#8,#9:17])[c:15]([H])[c:16]([H])1>>[H:19][C:1]([H:18])([#6](-[#6]-[#6](-[#8-])=O)-[#6](-[#8-])=O)[c:5]1[c:12]([H])[c:13]([H])[c:14](-[#6,#8,#9:17])[c:15]([H])[c:16]([H])1",
    trigger_smarts = "[#6;H3]c1ccc([#6,#8,#9])cc1",
    description = "Aromatic methyl reacts with fumarate to form methylsuccinate (ortho variant)"
  ),
  
  list(
    id = "bt0270_3920",
    name = "Aromatic Methylsuccinate Formation (variant 4)",
    smirks = "[H][C:1]([H:18])([H:19])[c:11]1[c:12]([H])[c:13]([H])[c:14]([H])[c:15]([H])[c:16]1-[#6,#8,#9:17]>>[H:19][C:1]([H:18])([#6](-[#6]-[#6](-[#8-])=O)-[#6](-[#8-])=O)[c:11]1[c:12]([H])[c:13]([H])[c:14]([H])[c:15]([H])[c:16]1-[#6,#8,#9:17]",
    trigger_smarts = "[#6;H3]c1ccccc1[#6,#8,#9]",
    description = "Aromatic methyl reacts with fumarate to form methylsuccinate (ipso variant)"
  ),
  
  list(
    id = "bt0269_3646",
    name = "n-Hexane Succinate Addition",
    smirks = "[#6:10]-[#6:11]([H])([H])-[#6:12]([H])([H])-[#6:13]([H])([H])-[#6:2]([H])([H])-[#6:14]([H])([H])([H])>>[#6:10]-[#6:11]([H])([H])-[#6:12]([H])([H])-[#6:13]([H])([H])-[#6:2]([H])(-[#6:14]([H])([H])([H]))-[#6](-[#6]-[#6](-[#8-])=O)-[#6](-[#8-])=O",
    trigger_smarts = "[#6][#6;H2][#6;H2][#6;H2][#6;H2][#6;H3]",
    description = "n-Hexane subterminal carbon reacts with fumarate to form (1-methylpentyl)succinate"
  ),
  
  list(
    id = "bt0066_3867",
    name = "1-Halo-2-Hydroxyaliphatic to Epoxide (variant 1)",
    smirks = "[#6:5]-[#6:3]([H])(-[#8:4]([H]))!@-[#6:2]([H])([H])-[#9,#17,#35,#53]>>[#6:5]-[#6:3]([H])-1-[#6:2]([H])([H])-[#8:4]-1",
    trigger_smarts = "[#6][#6;H1]([#8;H1])[#6;H2][#9,#17,#35,#53]",
    description = "1-Halo-2-hydroxyaliphatic cyclized to 1,2-epoxide"
  ),
  
  list(
    id = "bt0066_3856",
    name = "1-Halo-2-Hydroxyaliphatic to Epoxide (variant 2)",
    smirks = "[#6:5]-[#6:1]([H])(-[#9,#17,#35,#53])!@-[#6:2]([H])([H])-[#8:3]([H])>>[#6:5]-[#6:1]([H])-1-[#6:2]([H])([H])-[#8:3]-1",
    trigger_smarts = "[#6][#6;H1]([#9,#17,#35,#53])[#6;H2][#8;H1]",
    description = "1-Hydroxy-2-haloaliphatic cyclized to 1,2-epoxide"
  ),
  
  list(
    id = "bt0432_4254",
    name = "Phosphorofluoridate / Thiophosphate Hydrolysis",
    smirks = "[#6,#7,#8,#16:4][P:2]([#9,#16,#17,#35,#53:1])([#6,#8:5])=[#8,#16:6]>>[#8]([H])[P:2]([#6,#7,#8,#16:5])([#6,#8:4])=[#8,#16:6].[#9,#16,#17,#35,#53:1]",
    trigger_smarts = "[#6,#7,#8,#16]P([#9,#16,#17,#35,#53])([#6,#8])=[#8,#16]",
    description = "Phosphorofluoridate or thiophosphate hydrolyzed to phosphate with loss of F/CN/thiol"
  ),
  
  list(
    id = "bt0280_2426",
    name = "N-Carboxylate Amide Decarboxylation",
    smirks = "[H][#8:6]\\[#6:5]=[#7:1]\\[#6](-[#8-])=O>>[#7:1]-[#6:5]=[O:6]",
    trigger_smarts = "[#8;H1][#6]=[#7]C([#8-])=O",
    description = "N-carboxylate amide decarboxylated to amide with loss of CO2"
  ),
  
  list(
    id = "bt0036_3571",
    name = "Aromatic Methyl to Primary Alcohol",
    smirks = "[#6:1]([H])([H])([H])-[c:4](:[#6,#7,#8,#16;a:5]):[#6,#7,#8,#16;a:6]>>[#8]-[#6:1]([H])([H])-[c:4](:[#6,#7,#8,#16;a:6]):[#6,#7,#8,#16;a:5]",
    trigger_smarts = "[#6;H3]c(:[a]):[a]",
    description = "Aromatic methyl group oxidized to primary alcohol"
  ),
  
  list(
    id = "bt0322_3393",
    name = "cis-2-Ene-CoA to Isohexenyl-Glutaconyl-CoA",
    smirks = "[H:10]\\[#6:6](=[#6:9](/[#6:1]([H])([H])([H]))-[#6:11]-[#6:12]-[#6:13]=[#6:14])-[#6:5](-[#8-:7])=[O:8]>>[H:10]\\[#6:6](-[#6:5](-[#8-:7])=[O:8])=[#6:9](\\[#6:11]-[#6:12]-[#6:13]=[#6:14])-[#6:1]-[#6](-[#8-])=O",
    trigger_smarts = "[#6;H1]=[#6]([#6;H3])[#6][#6][#6]=[#6]",
    description = "cis-2-Ene-CoA isomerized to isohexenyl-glutaconyl-CoA"
  ),
  
  list(
    id = "bt0364_2870",
    name = "Pyridine Ring Opening to 5-Iminopentanoate",
    smirks = "[c:4]([H])1[c:3]([H])[c:2]([H])[n:1][c:6]([H])[c:5]([H])1>>[#8-]-[#6:6](=O)-[#6:5]-[#6:4]-[#6:3]-[#6:2]=[#7:1]",
    trigger_smarts = "c1cc[n]cc1",
    description = "Pyridine ring opened to 5-iminopentanoate"
  ),
  
  list(
    id = "bt0237_2957",
    name = "2-Hydroxyethanone Retro-Aldol",
    smirks = "[#6,#8:9][#6:7]([#6,#8,#16:10])-[#6:2]([H])(-[#8:3]([H]))-[#6:1](=[O:8])-[c:5](:[#6,#8,#16;a:6]):[c:4]>>[#6,#8,#16;a:6]:[c:5](:[c:4])-[#6:1]=[O:8].[#6,#8,#16:10][#6:7]([#6,#8:9])-[#6:2]=[O:3]",
    trigger_smarts = "[#6,#8][#6]([#6,#8,#16])[#6;H1]([#8;H1])C(=O)c([a])[c]",
    description = "2-Hydroxyethanone retro-aldol cleaved to two aldehydes"
  ),
  
  list(
    id = "bt0363_4185",
    name = "2,5-Dihydroxypyridine to N-Formylmaleamate",
    smirks = "[#8:7]([H])-[c:2]1[c:6]([H])[c:5]([H])[c:4](-[#8:8]([H]))[n:1][c:3]([H])1>>[#8-:7]-[#6:2](=O)\\[#6:6]=[#6:5]/[#6:4](=[O:8])-[#7:1]-[#6:3]=O",
    trigger_smarts = "[#8;H1]c1cc([H])c([#8;H1])n[c;H1]1",
    description = "2,5-Dihydroxypyridine ring opened to N-formylmaleamate"
  ),
  
  list(
    id = "bt0037_3717",
    name = "Arylhydroxylamine Rearrangement to 4-Aminophenol",
    smirks = "[#8]([H])-[#7:1]([H])-[c:5]1[c:6][c:7][c:4]([H])[c:8][c:9]1>>[#7:1]([H])([H])-[c:5]1[c:6][c:7][c:4](-[#8]([H]))[c:8][c:9]1",
    trigger_smarts = "[#8;H1][#7;H1]c1ccc([H])cc1",
    description = "1-Hydroxylamino-4-unsubstituted benzenoid rearranges to 4-aminophenol"
  ),
  
  list(
    id = "bt0037_3718",
    name = "Arylhydroxylamine Rearrangement to 2-Aminophenol",
    smirks = "[H:9][#8:4]-[#7:3]([H:10])-[c:1]1[c:5][c:6][c:7][c:8][c:2]1[H:11]>>[H:9][#8:4]-[c:2]1[c:8][c:7][c:6][c:5][c:1]1-[#7:3]([H:10])[H:11]",
    trigger_smarts = "[#8;H1][#7;H1]c1ccccc1[H]",
    description = "1-Hydroxylamino-2-unsubstituted benzenoid rearranges to 2-aminophenol"
  ),
  
  list(
    id = "bt0375_3152",
    name = "1-Unsubstituted Furan Hydroxylation",
    smirks = "[H][c:1]1[c:5][c:6][c:7][o:4]1>>[#8]([H])-[c:1]1[c:5][c:6][c:7][o:4]1",
    trigger_smarts = "[#6;H1]c1ccco1",
    description = "Unsubstituted furan position hydroxylated to 1-hydroxyfuran"
  ),
  
  list(
    id = "bt0082_2982",
    name = "2-Ketocarboxylate Decarboxylation",
    smirks = "[#6:6]-[#6:5](=[O:7])-[#6](-[#8-:2])=O>>[#6:6]-[#6:5](-[#8-:2])=[O:7]",
    trigger_smarts = "[#6]C(=O)C([#8-])=O",
    description = "2-Ketocarboxylate decarboxylated to carboxylate with loss of CO2"
  ),
  
  list(
    id = "bt0049_3745",
    name = "1,2-Alkene to 1,2-Epoxide",
    smirks = "[#6;R0:1]([H])([H])=[#6;R0:2]>>[#6:2]-1-[#6:1]([H])([H])-[#8]-1",
    trigger_smarts = "[#6;R0;H2]=[#6;R0]",
    description = "Terminal alkene epoxidized to 1,2-epoxide"
  ),
  
  list(
    id = "bt0073_3591",
    name = "2-Unsubstituted Cyclic Ether Hydroxylation",
    smirks = "[#6:5]-[#6:1]([H])([H])@-[#8:4]@-[#6:2]>>[#6:2]@-[#8:4]@-[#6:1]([H])(-[#6:5])-[#8]([H])",
    trigger_smarts = "[#6][#6;H2]@[#8]@[#6]",
    description = "2-Unsubstituted cyclic ether hydroxylated at 2-position"
  ),
  
  list(
    id = "bt0402_3576",
    name = "Cyclic Urea Hydrolysis",
    smirks = "[#7:4]@-[#6:2](@-[#7:1])=[O:5]>>[#7:4]-[#6:2](-[#8-])=[O:5].[#7:1]",
    trigger_smarts = "[#7]@C(@[#7])=O",
    description = "Cyclic urea hydrolyzed to aminocarbamate and amine"
  ),
  
  list(
    id = "bt0077_441",
    name = "Peroxide Reduction to Alcohol",
    smirks = "[H:4][#8]-[#8:2]-[#6:3]>>[H:4][#8:2]-[#6:3]",
    trigger_smarts = "[#8;H1][#8][#6]",
    description = "Peroxide reduced to primary alcohol"
  ),
  
  list(
    id = "bt0143_3211",
    name = "Alkyl or Aryl Sulfate Hydrolysis",
    smirks = "[#6:7]-[#8:1][S:2]([#8:6])(=[O:4])=[O:5]>>[#6:7]-[#8:1]([H]).[#8:6][S:2]([#8-])(=[O:4])=[O:5]",
    trigger_smarts = "[#6][#8]S([#8])(=O)=O",
    description = "Alkyl or aryl sulfate hydrolyzed to alcohol and sulfate"
  ),
  
  list(
    id = "bt0103_3648",
    name = "Dithiophosphate to Thiophosphate Desulfurization",
    smirks = "[#8:4][P:2]([#8:6])([#8,#16:5])=S>>[#8:6][P:2]([#8:4])([#8,#16:5])=O",
    trigger_smarts = "[#8]P([#8])([#8,#16])=S",
    description = "Dithiophosphate diester or thiophosphate desulfurized to phosphate"
  ),
  
  list(
    id = "bt0103_3816",
    name = "Thiophosphate Thiol Oxidation",
    smirks = "[#8:4][P:1]([#8:6])([#16]([H]))=[O:5]>>[#8:4][P:1]([#8:6])([#8])=[O:5]",
    trigger_smarts = "[#8]P([#8])([#16;H1])=O",
    description = "Thiophosphate with thiol oxidized to phosphate diester"
  ),
  
  list(
    id = "bt0377_4300",
    name = "3-Hydroxy-2-Methylpyridine-5-carboxylate Ring Opening",
    smirks = "[#8:7]([H])-[c:3]1[c;R1:4][c;R1:5][c:6]([H])[nH0:1][c:2]1-[#6,#8:10]>>[#8-]-[#6:3](=[O:7])-[#6:4]\\[#6:5]=[#6:6]\\[#7:1]-[#6:2](-[#6,#8:10])=O",
    trigger_smarts = "[#8;H1]c1cc([H])nc([#6,#8])c1",
    description = "3-Hydroxy-2-methylpyridine-5-carboxylate ring opened to 2-(acetamidomethylene)succinate"
  ),
  
  list(
    id = "bt0067_4013",
    name = "Lactam / Secondary Amide Hydrolysis",
    smirks = "[H:5][#7:1](-[#6,#7:7])-[#6:3](-[#1,#6:6])=[O:4]>>[#8-]-[#6:3](-[#1,#6:6])=[O:4].[H:5][#7:1]-[#6,#7:7]",
    trigger_smarts = "[#7;H1]([#6,#7])C([#1,#6])=O",
    description = "Lactam or secondary amide hydrolyzed to aminocarboxylate"
  ),
  
  list(
    id = "bt0188_1382",
    name = "5-Unsubstituted Pyrrole Hydroxylation",
    smirks = "[H:11][c:1]1[c:4][c:3][c:5]([n:9]1[H:10])-[#6:7](-[#8-:6])=[O:8]>>[H:11][#8]-[c:1]1[c:4][c:3][c:5]([n:9]1[H:10])-[#6:7](-[#8-:6])=[O:8]",
    trigger_smarts = "[#6;H1]c1cc([H])c(n1[H])C([#8-])=O",
    description = "5-Unsubstituted pyrrole hydroxylated at 5-position"
  ),
  
  list(
    id = "bt0190_1386",
    name = "Phloroglucinol Partial Reduction",
    smirks = "[H][#8:7]-[c:1]1[c:2][c:3](-[#8:9][H:10])[c:4][c:5](-[#8:11][H:12])[c:6]1>>[H:10][#8:9]-[#6:3]-1-[#6:2]-[#6:1](=[O:7])-[#6:6]=[#6:5](-[#8:11][H:12])-[#6:4]-1",
    trigger_smarts = "[#8;H1]c1cc([#8;H1])cc([#8;H1])c1",
    description = "Phloroglucinol partially reduced to dihydrophloroglucinol"
  ),
  
  list(
    id = "bt0284_3687",
    name = "Benzothiophene-S,S-Dioxide Ring Opening",
    smirks = "[O:12]=[S:1]1(=[O:2])[#6:11]=,:[#6:10]-[c:9]2[c:8][c:7][c:6][c:5][c:3]12>>[#8]([H])-[c:3]1[c:5][c:6][c:7][c:8][c:9]1-[#6:10]=,:[#6:11][S:1]([#8-:2])=[O:12]",
    trigger_smarts = "O=S1(=O)[#6]=[#6]c2ccccc21",
    description = "Benzothiophene-S,S-dioxide ring opened to 2-hydroxyphenyl-2-ethenesulfonate"
  ),
  
  list(
    id = "bt0359_3668",
    name = "4-Halobenzoate / 4-Halophenol Dehalogenation",
    smirks = "[#9,#17,#35,#53]-[c:1]1[c:7][c:6][c:5](-[$(O[H]),$([C](-[O-])=O):4])[c:9][c:8]1>>[#8]-[c:1]1[c:7][c:6][c:5](-[$(O[H]),$([C](-[O-])=O):4])[c:9][c:8]1",
    trigger_smarts = "[#9,#17,#35,#53]c1ccc([O;H1],[C;a]([#8-])=O)cc1",
    description = "4-Halobenzoate or 4-halophenol dehalogenated to 4-hydroxybenzoate or hydroquinone"
  ),
  
  list(
    id = "bt0418_3842",
    name = "Anthrone Ring Opening (variant 1)",
    smirks = "[O:8]=[#6:5]-1-[#6:6]=[#6:1]-[#6:2](=[O:14])-[c:3]2[c:11][c:12][c:13][c:10][c:4]-12>>[#8]-[c:4]1[c:10][c:13][c:12][c:11][c:3]1-[#6:2](=[O:14])\\[#6:1]=[#6:6]/[#6:5](-[#8-])=[O:8]",
    trigger_smarts = "O=[#6]1[#6]=[#6][#6](=O)c2ccccc21",
    description = "Anthrone ring opened to 2-hydroxybenzoylacrylate derivative"
  ),
  
  list(
    id = "bt0418_3806",
    name = "Anthrone Ring Opening (variant 2)",
    smirks = "[O:8]=[#6:5]~1~[c:6]2[c:10][c:11][c:12][c:13][c:1]2~[#6:2]~[c:3]2[c:15][c:16][c:17][c:14][c:4]~12>>[#8]-[c:4]1[c:14][c:17][c:16][c:15][c:3]1~[#6:2]~[c:1]1[c:13][c:12][c:11][c:10][c:6]1-[#6:5](-[#8-])=[O:8]",
    trigger_smarts = "O=[#6]1c2ccccc2[#6]c2ccccc21",
    description = "Anthrone ring opened to 2-[(2-hydroxyphenyl)methyl]benzoate derivative"
  ),
  
  list(
    id = "bt0128_4173",
    name = "1-Sulfo-2-Unsubstituted Aromatic Dihydroxylation",
    smirks = "[H][c:2](:[c:11]):[c:1](:[c:10])S([#8-])(=O)=O>>[#8]-[c:1](:[c:10]):[c:2](-[#8]):[c:11]",
    trigger_smarts = "[#6;H1]c(:c)c(:c)S([#8-])(=O)=O",
    description = "1-Sulfo-2-unsubstituted aromatic desulfonated and dihydroxylated to catechol"
  ),
  
  list(
    id = "bt0055_4169",
    name = "1-Carboxy-2-Unsubstituted Aromatic Dihydroxylation",
    smirks = "[#8-]-[#6](=O)-[c:2]1[c:1]([H])[c:8][c:10][c:11][c:9]1>>[#8]([H])-[c:1]1[c:8][c:10][c:11][c:9][c:2]1-[#8]([H])",
    trigger_smarts = "[#8-]C(=O)c1c([H])cccc1",
    description = "1-Carboxy-2-unsubstituted aromatic decarboxylated and dihydroxylated to catechol"
  ),
  
  list(
    id = "bt0065_4171",
    name = "1-Amino-2-Unsubstituted Aromatic Dihydroxylation",
    smirks = "[H][c:2](:[c:7]):[c:1](:[c:6])-[#7;!$(NC(N)=O)!$(N(C=O)c1ccccc1C):5](-[#1,#6:9])-[#1,#6:10]>>[#8]-[c:1](:[c:6]):[c:2](-[#8]):[c:7].[#1,#6:10]-[#7:5]-[#1,#6:9]",
    trigger_smarts = "[#6;H1]c(:c)c(:c)[#7]([#1,#6])[#1,#6]",
    description = "1-Amino-2-unsubstituted aromatic dihydroxylated to catechol with release of amine"
  ),
  
  list(
    id = "bt0071_4150",
    name = "Cyclic Ketone to Cyclic Ester (Baeyer-Villiger)",
    smirks = "[#6:4]@-!:[#6;!$(C1(=O)C=CC(=O)C=C1)!$(C(=O)CC=O):1](-!:[#6:2])=[O:5]>>[#6:2]-[#8]-[#6:1](-[#6:4])=[O:5]",
    trigger_smarts = "[#6]@C([#6])=O",
    description = "Cyclic ketone oxidized to cyclic ester via Baeyer-Villiger rearrangement"
  ),
  
  list(
    id = "bt0339_3800",
    name = "N-Aliphatic-s-Triazine Dealkylation",
    smirks = "[H][#6;A:2][#7:1]-[c:6]1[n:11][c:10][n:9][c:8][n:7]1>>[H][#7:1]-[c:6]1[n:11][c:10][n:9][c:8][n:7]1.[#6;A:2]=O",
    trigger_smarts = "[#6;A;H1][#7]c1ncncn1",
    description = "N-aliphatic-s-triazine dealkylated to amino-s-triazine and aldehyde/ketone"
  ),
  
  list(
    id = "bt0361_4141",
    name = "Aliphatic Thiophosphoester Hydrolysis",
    smirks = "[#8:5][P:4]([#7,#8,#16:6])(=[#8,#16:7])[#8:1][#6,#15;A:3]>>[#8:1]([H])[P:4]([#8:5])([#7,#8,#16:6])=[#8,#16:7].[#8]([H])[#6,#15;A:3]",
    trigger_smarts = "[#8]P([#7,#8,#16])(=[#8,#16])[#8][#6,#15;A]",
    description = "Aliphatic thiophosphoester or phosphoester hydrolyzed to alcohol and phosphate"
  ),
  
  list(
    id = "bt0399_3488",
    name = "1-Methylcyclohexene Epoxidation",
    smirks = "[#6:8]([H])([H])([H])-[#6:1]-1=[#6:2]([H])-[#6:7]([H])([H])-[#6:6]-[#6:5]([H])([H])-[#6:4]-1>>[#6:8]([H])([H])([H])[C:1]12[#6:4]-[#6:5]([H])([H])-[#6:6]-[#6:7]([H])([H])-[#6:2]([H])1-[#8]2",
    trigger_smarts = "[#6;H3]C1=[#6;H1][#6;H2][#6][#6;H2][#6]1",
    description = "1-Methylcyclohexene epoxidized to 1,2-epoxy-1-methylcyclohexane"
  ),
  
  list(
    id = "bt0173_1376",
    name = "Stilbene Diol Oxidative Cleavage",
    smirks = "[H:21][#8:20]-[c:16]1[c:5][c:8][c:14](\\[#6:2]=[#6:1](/[#6:15])-[c:10]2[c:11][c:12][c:17](-[#8:18][H:19])[c:13][c:9]2)[c:7][c:6]1>>[H:21][#8:20]-[c:16]1[c:6][c:7][c:14](-[#6:2]=O)[c:8][c:5]1.[H:19][#8:18]-[c:17]1[c:13][c:9][c:10]([c:11][c:12]1)-[#6:1](-[#6:15])=O",
    trigger_smarts = "[#8;H1]c1ccc(C=Cc2ccc([#8;H1])cc2)cc1",
    description = "Stilbene diol oxidatively cleaved to two aromatic aldehydes/ketones"
  ),
  
  list(
    id = "bt0425_3892",
    name = "Saccharin to Catechol",
    smirks = "O=[#6]-1-[#7]([H])S(=O)(=O)[c:2]2[c:14]([H])[c:13]([H])[c:12]([H])[c:11]([H])[c:1]-12>>[#8]([H])-[c:1]1[c:11]([H])[c:12]([H])[c:13]([H])[c:14]([H])[c:2]1-[#8]([H])",
    trigger_smarts = "O=C1NC(=O)S(=O)(=O)c2ccccc21",
    description = "Saccharin ring opened and desulfonated to catechol"
  ),
  
  list(
    id = "bt0323_3394",
    name = "3-Hydroxy-3-Isohexenylglutaconyl-CoA Cleavage",
    smirks = "[H][#8:2][C:7]([#6:11]-[#6:12]-[#6:13]=[#6:14])([#6:3]([H])([H])-[#6:4](-[#8-:6])=[O:5])[#6:9]-[#6:8](-[#8-:15])=[O:10]>>[#8-:15]-[#6:8](=[O:10])-[#6:9]-[#6:7](=[O:2])-[#6:11]-[#6:12]-[#6:13]=[#6:14].[#6:3]-[#6:4](-[#8-:6])=[O:5]",
    trigger_smarts = "[#8;H1]C([#6][#6][#6]=[#6])([#6;H2]C([#8-])=O)CC([#8-])=O",
    description = "3-Hydroxy-3-isohexenylglutaconyl-CoA cleaved to 7-methyl-3-oxo-6-octenoyl-CoA and acetate"
  ),
  
  list(
    id = "bt0023_3854",
    name = "Ether O-Dealkylation (dialiphatic / aromatic-aliphatic)",
    smirks = "[H][#6;A:3]!@-[#8:2]!@-[#6:1]>>[#6:1]-[#8:2].[#6;A:3]=O",
    trigger_smarts = "[#6;A;H1][#8][#6]",
    description = "Dialiphatic or aromatic-aliphatic ether dealkylated to alcohol and aldehyde"
  )
  
)