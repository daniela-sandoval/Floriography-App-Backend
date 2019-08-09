# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tone.destroy_all
Adjective.destroy_all
Flower.destroy_all
Bouquet.destroy_all

# ---------- USER ----------
daniela = User.create(username: "Daniela", password: "cats", email: "daniela.sandoval820@gmail.com")

mochi = User.create(username: "Mochi", password: "123", email: "mochi@gmail.com")

# ---------- TONES ----------
anger = Tone.create(name: "Anger")
fear = Tone.create(name: "Fear")
joy = Tone.create(name: "Joy")
sadness = Tone.create(name: "Sadness")
analytical = Tone.create(name: "Analytical")
confident = Tone.create(name: "Confident")
tentative = Tone.create(name: "Tentative")
other = Tone.create(name: "Other")

# ---------- ADJECTIVES ----------
hatred = Adjective.create(name: "Hatred", tone_id: anger.id)
anger_adj = Adjective.create(name: "Anger", tone_id: anger.id)
jealous = Adjective.create(name: "Jealous", tone_id: anger.id)
anxious = Adjective.create(name: "Anxious", tone_id: fear.id)
hopeless = Adjective.create(name: "Hopeless", tone_id: fear.id)
fear_adj = Adjective.create(name: "Fear", tone_id: fear.id)
love = Adjective.create(name: "Love", tone_id: joy.id)
joy_adj = Adjective.create(name: "Joy", tone_id: joy.id)
happiness = Adjective.create(name: "Happiness", tone_id: joy.id)
disappointed = Adjective.create(name: "Disappointed", tone_id: sadness.id)
sadness_adj = Adjective.create(name: "Sadness", tone_id: sadness.id)
yearn =  Adjective.create(name: "Yearn", tone_id: sadness.id)
thoughtful = Adjective.create(name: "Thoughtful", tone_id: analytical.id)
analytical_adj = Adjective.create(name: "Analytical", tone_id: analytical.id)
logical = Adjective.create(name: "Logical", tone_id: analytical.id)
confident_adj = Adjective.create(name: "Confident", tone_id: confident.id)
doubtful = Adjective.create(name: "Doubtful", tone_id: tentative.id)
tentative_adj = Adjective.create(name: "Tentative", tone_id: anger.id)
powerful = Adjective.create(name: "Powerful", tone_id: fear.id)
rarity = Adjective.create(name: "Rarity", tone_id: joy.id)
faithfulness = Adjective.create(name: "Faithfulness", tone_id: confident.id)
gratitude = Adjective.create(name: "Gratitude", tone_id: joy.id)
cheerful = Adjective.create(name: "Cheerful", tone_id: joy.id)
strength = Adjective.create(name: "Strength", tone_id: confident.id)
spiritual = Adjective.create(name: "Spiritual", tone_id: joy.id)
wealth = Adjective.create(name: "Wealth", tone_id: joy.id)
beauty = Adjective.create(name: "Beauty", tone_id: joy.id)
self_confidence = Adjective.create(name: "Self Confidence", tone_id: confident.id)
fake = Adjective.create(name: "Fake", tone_id: anger.id)
Adjective.create(name: "", tone_id: )
Adjective.create(name: "", tone_id: )
# unsettled = Adjective.create(name: "Unsettled", tone_id: tentative.id)

# ---------- FLOWERS ----------
aconite = Flower.create(name: "Aconite", meaning: "I hate you so be careful", img_url: "aco_pic", adjective_id: hatred.id)
apocynum = Flower.create(name: "Apocynum", meaning: "I doubt you", img_url: "apoc_pic", adjective_id: doubtful.id)
acacia = Flower.create(name: "Yellow Acacia", meaning: "Concealed love", img_url: "acacia_pic", adjective_id: love.id)
althea = Flower.create(name: "Althea", meaning: "I'm consumed by my love", img_url: "al_pic", adjective_id: love.id)
ambrosia = Flower.create(name: "Ambrosia", meaning: "Your love is reciprocated", img_url: "ambrosia_pic", adjective_id: love.id)
ros_acacia = Flower.create(name: "Rose Acacia", meaning: "I hope we can be friends", img_url: "acacia_picc", adjective_id: tentative_adj.id)
achillea = Flower.create(name: "Achillea", meaning: "War and the power to overcome is mine", img_url: "ach_pic", adjective_id: powerful.id)
achimenes = Flower.create(name: "Achimenes", meaning: "Such worth is rare", img_url: "achi_pic", adjective_id: rarity.id)
aconite = Flower.create(name: "Aconite", meaning: "I hate humans", img_url: "acon_pic", adjective_id: anger_adj.id)
adder = Flower.create(name: "Adder's Tongue", meaning: "Totally jealous of you", img_url: "add_pic", adjective_id: jealousy.id)
adonis = Flower.create(name: "Adonis", meaning: "Sad memories", img_url: "adon_pic", adjective_id: sadness_adj.id)
african_violet = Flower.create(name: "African Violent", meaning: "I am extremely faithful", img_url: "afri_pic", adjective_id: faithfulness.id)
agrimony = Flower.create(name: "Agrimony", meaning: "I'm so grateful to you", img_url: "agri_pic", adjective_id: gratitude.id)
ajuga = Flower.create(name: "Ajuga", meaning: "Cheerful heart", img_url: "aju_pic", adjective_id: cheerful.id)
allium = Flower.create(name: "Allium", meaning: "Having great strength", img_url: "all_pic", adjective_id: strength.id)
allamanda = Flower.create(name: "Allamanda", meaning: "Spiritual chief", img_url: "alla_pic", adjective_id: spiritual.id)
almond_blossom = Flower.create(name: "Almond Blosson", meaning: "Lovers Charm
", img_url: "alm_pic", adjective_id: love.id)
alstroemeria = Flower.create(name: "Alstroemeria", meaning: "Wealth and fortune", img_url: "als_pic", adjective_id: wealth.id)
alyssum = Flower.create(name: "Sweet Alyssum", meaning: "Worth beyond beauty", img_url: "aly_pic", adjective_id: beauty.id)
amaryllis = Flower.create(name: "Amaryllis", meaning: "Self confident beautiful woman", img_url: "amar_pic", adjective_id: self_confidence.id)
anchusa = Flower.create(name: "Anchusa", meaning: "You're fake", img_url: "anch_pic", adjective_id: fake.id)
baby_breathe = Flower.create(name: "Baby's Breathe", meaning: "Ever lasting love", img_url: "bb_pic", adjective_id: love.id)
begonia = Flower.create(name: "Begonia", meaning: "Please beware", img_url: "beg_pic", adjective_id: anxious.id)
belladonna = Flower.create(name: "Belladonna", meaning: "You are a dream", img_url: "bell_pic", adjective_id: beauty.id)
bird_para = Flower.create(name: "Bird Of Paradise", meaning: "Extremely faithful", img_url: "para_pic", adjective_id: faithfulness.id)
black_thorn = Flower.create(name: "Blackthorn", meaning: "I have changed radically", img_url: "blk_pic", adjective_id: analytical_adj.id)
borage = Flower.create(name: "Borage", meaning: "You're rude...", img_url: "bor_plant", adjective_id: hatred.id)
butterfly = Flower.create(name: "Butterful Weed", meaning: "If you love me, please let me go", img_url: "but_pic", adjective_id: analytical_adj.id)
cypress = Flower.create(name: "Cypress", meaning: "Symbolizes hopelessness", img_url: "cy_pic", adjective_id: hopeless.id)
cape_jas = Flower.create(name: "Cape Jasmine", meaning: "I am too happy", img_url: "cape_pic", adjective_id: happiness.id)
camellia = Flower.create(name: "Pink Camellia", meaning: "Longing for you", img_url: "cam_pic", adjective_id: yearn.id)
clover = Flower.create(name: "White Clover", meaning: "Think of me", img_url: "whitclo_pic", adjective_id: thoughtful.id)
Flower.create(name: "", meaning: "", img_url: "", adjective_id:)
Flower.create(name: "", meaning: "", img_url: "", adjective_id:)
dandelion = Flower.create(name: "Dandelion", meaning: "Wishes come true", img_url: "dan_pic", adjective_id: happiness.id)
fish_gera = Flower.create(name: " Fish Geranim", meaning: "Disappointed expectation", img_url: "fish_pis", adjective_id: disappointed.id)
hyacinth = Flower.create(name: "Yellow Hyacinth", meaning: "Symbolizes jealousy", img_url: "hya_img", adjective_id: jealous.id)
hepatica = Flower.create(name: "Hepatica", meaning: "Symbolizes confidence", img_url: "hepa_pic", adjective_id: confident_adj.id)
ivy = Flower.create(name: "Ivy Sprig", meaning: "Anxious to please", img_url: "ivy_pic", adjective_id: anxious.id)
lichen = Flower.create(name: "Lichen", meaning: "Symbolizes confidence", img_url: "lic_pic", adjective_id: confident_adj.id)
love_lies = Flower.create(name: "Love Lies Bleeding", meaning: "Hopelessness", img_url: "lies_pic", adjective_id: hopeless.id)
marigold = Flower.create(name: "marigold", meaning: "Symbolizes jealousy and cruelty", img_url: "mari_pic", adjective_id: jealous.id)
orange_lily = Flower.create(name: "Orange Lily", meaning: "Symbolizes hatred and disdain", img_url: "org_pic", adjective_id: hatred.id)
red_columbine = Flower.create(name: "Red Columbine", meaning: "Anxious Resolve", img_url: "colum_pic", adjective_id: anxious.id)
white_car = Flower.create(name: "White Carnation", meaning: "Sweet and lovely", img_url: "White Carnation", adjective_id: love.id)
yellow_car = Flower.create(name: "Yellow Carnation", meaning: "Symbolizes disappointment", img_url: "yell_pic", adjective_id: disappointed.id)
zinnia = Flower.create(name: "Mixed Zinnia", meaning: "Thinking of an absent friend", img_url: "zin_pic", adjective_id: thoughtful.id)

Flower.create(name: "", meaning: "", img_url: "", adjective_id:)

# ---------- BOUQUET ----------
dan_bouq = Bouquet.create(name: "My first test", user_id: daniela.id)
dan_bouq_two = Bouquet.create(name: "My second test", user_id: daniela.id)
mochi = Bouquet.create(name: "My third test", user_id: mochi.id)
# ---------- BOUQUET FLOWERS ----------

# --------- FAVORITES ----------

puts "YOUR SEEDS HAVE BEEN PLANTED 🌱"
