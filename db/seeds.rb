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
jealous = Adjective.create(name: "Jealous", tone_id: anger.id)
anxious = Adjective.create(name: "Anxious", tone_id: fear.id)
hopeless = Adjective.create(name: "Hopeless", tone_id: fear.id)
love = Adjective.create(name: "Love", tone_id: joy.id)
happiness = Adjective.create(name: "Happiness", tone_id: joy.id)
disappointed = Adjective.create(name: "Disappointed", tone_id: sadness.id)
yearn =  Adjective.create(name: "Yearn", tone_id: sadness.id)
thoughtful = Adjective.create(name: "Thoughtful", tone_id: analytical.id)
logical = Adjective.create(name: "Logical", tone_id: analytical.id)
confident_adj = Adjective.create(name: "Confident", tone_id: confident.id)
doubtful = Adjective.create(name: "Doubtful", tone_id: tentative.id)
# unsettled = Adjective.create(name: "Unsettled", tone_id: tentative.id)

# ---------- FLOWERS ----------
orange_lily = Flower.create(name: "Orange Lily", meaning: "Symbolizes hatred and disdain", img_url: "org_pic", adjective_id: hatred.id)
aconite = Flower.create(name: "Aconite", meaning: "Symbolizes hatred and caution", img_url: "aco_pic", adjective_id: hatred.id)
hyacinth = Flower.create(name: "Yellow Hyacinth", meaning: "Symbolizes jealousy", img_url: "hya_img", adjective_id: jealous.id)
marigold = Flower.create(name: "marigold", meaning: "Symbolizes jealousy and cruelty", img_url: "mari_pic", adjective_id: jealous.id)
ivy = Flower.create(name: "Ivy Sprig", meaning: "Anxious to please", img_url: "ivy_pic", adjective_id: anxious.id)
red_columbine = Flower.create(name: "Red Columbine", meaning: "Anxious Resolve", img_url: "colum_pic", adjective_id: anxious.id)
love_lies = Flower.create(name: "Love Lies Bleeding", meaning: "Hopelessness", img_url: "lies_pic", adjective_id: hopeless.id)
cypress = Flower.create(name: "Cypress", meaning: "Symbolizes hopelessness", img_url: "cy_pic", adjective_id: hopeless.id)
ambrosia = Flower.create(name: "Ambrosia", meaning: "Your love is reciprocated", img_url: "ambrosia_pic", adjective_id: love.id)
acacia = Flower.create(name: "Acacia", meaning: "Concealed love", img_url: "acacia_pic", adjective_id: love.id)
dandelion = Flower.create(name: "Dandelion", meaning: "Wishes come true", img_url: "dan_pic", adjective_id: happiness.id)
cape_jas = Flower.create(name: "Cape Jasmine", meaning: "I am too happy", img_url: "cape_pic", adjective_id: happiness.id)
yellow_car = Flower.create(name: "Yellow Carnation", meaning: "Symbolizes disappointment", img_url: "yell_pic", adjective_id: disappointed.id)
fish_gera = Flower.create(name: " Fish Geranim", meaning: "Disappointed expectation", img_url: "fish_pis", adjective_id: disappointed.id)
camellia = Flower.create(name: "Pink Camellia", meaning: "Longing for you", img_url: "cam_pic", adjective_id: yearn.id)
zinnia = Flower.create(name: "Mixed Zinnia", meaning: "Thinking of an absent friend", img_url: "zin_pic", adjective_id: thoughtful.id)
clover = Flower.create(name: "White Clover", meaning: "Think of me", img_url: "whitclo_pic", adjective_id: thoughtful.id)
hepatica = Flower.create(name: "Hepatica", meaning: "Symbolizes confidence", img_url: "hepa_pic", adjective_id: confident_adj.id)
lichen = Flower.create(name: "Lichen", meaning: "Symbolizes confidence", img_url: "lic_pic", adjective_id: confident_adj.id)
apocynum = Flower.create(name: "Apocynum", meaning: "I doubt you", img_url: "apoc_pic", adjective_id: doubtful.id)

  # ONLY ONE ADJ. FLOWERS
  agapanthus = Flower.create(name: "Agapanthus", meaning: "Love letters", img_url: "aga_pic", adjective_id: love.id)
  althea = Flower.create(name: "Althea", meaning: "Consumed by love", img_url: "al_pic", adjective_id: love.id)
  aster = Flower.create(name: "Aster", meaning: "Love vibrations", img_url: "ast_pic", adjective_id: love.id)
  white_car = Flower.create(name: "White Carnation", meaning: "Sweet and lovely", img_url: "White Carnation", adjective_id: love.id)

# ---------- BOUQUET ----------
dan_bouq = Bouquet.create(name: "My first test", user_id: daniela.id)
dan_bouq_two = Bouquet.create(name: "My second test", user_id: daniela.id)
mochi = Bouquet.create(name: "My third test", user_id: mochi.id)
# ---------- BOUQUET FLOWERS ----------

# --------- FAVORITES ----------

puts "YOUR SEEDS HAVE BEEN PLANTED 🌱"
