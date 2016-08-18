# Thoughts
relaxation = Thought.create!(name: 'Relaxation', description: 'The state of being free from tension and anxiety', indicator: 'noun')
calm = Thought.create!(name: 'Calm', description: 'The absence of strong emotions; calm feelings', indicator: 'noun')
mindfulness = Thought.create!(name: 'Mindfulness', description: 'The quality or state of being conscious or aware of something', indicator: 'noun')
happiness = Thought.create!(name: 'Happiness', description: 'The state of being happy', indicator: 'noun')
confidence = Thought.create!(name: 'Confidence', description: 'The feeling or belief that one can have faith in or rely on something', indicator: 'noun')

# Steps
walk = Step.create!(name: 'Walk', description: 'Go for a walk. Breathe in the fresh air.', mindfulness: false)
feelings = Step.create!(name: 'Feelings', description: "Notice your feelings. Accept how you're currently feeling.", mindfulness: false)
sounds = Step.create!(name: 'Sounds', description: 'Notice the sounds around you. Are they loud or soft? High-pitched or low-pitched?', mindfulness: true)
colours = Step.create!(name: 'Colours', description: 'Notice the colours around you. Are they bright or pastel? Warm or cool?', mindfulness: true)
breathing = Step.create!(name: 'Breathing', description: 'Take notice of your breathing. Breathe in slowly, breathe out slowly. Breathe in slowly, breathe out slowly.', mindfulness: true)
breathe = Step.create!(name: 'Breathe', description: 'Take a deep breath', mindfulness: false)
count = Step.create!(name: 'Count', description: 'Count up to 10 slowly. Count backwards slowly from 10 down to 1.', mindfulness: false)
shapes = Step.create!(name: 'Shapes', description: 'Notice the shapes around you. Are they round? square? rectangular? triangular?', mindfulness: true)
temp = Step.create!(name: 'Temperature', description: 'Notice the temperatures around you. Are they warm, cool, cold or hot?', mindfulness: true)
smell = Step.create!(name: 'Smell', description: 'Notice the smells around you. Are they fresh and clean, or floral?', mindfulness: true)
achieve = Step.create!(name: 'Achieve', description: 'Think about the good things you have achieved today. You have made a difference.', mindfulness: false)
celebrate = Step.create!(name: 'Celebrate', description: 'Celebrate the small things. You are worth it. Every step is worth celebrating.', mindfulness: false)
smile = Step.create!(name: 'Smile', description: 'Happiness starts with the smallest of smiles. Make it as big as you can.', mindfulness: false)
lie_down = Step.create!(name: 'Lie Down', description: 'Lie down on your back. Starting with your feet, and moving up towards your head, slowly relax all the muscles in your body. Feel the tension melt away as your muscles relax.', mindfulness: false)
laugh = Step.create!(name: 'Laugh', description: 'Think of something funny. Remind yourself of your favourite joke.', mindfulness: false)
feedback = Step.create!(name: 'Feedback', description: "Ask friends or colleagues for feedback on things you've done well.", mindfulness: false)

# Sequences
relaxation.sequences.create!([{ step: walk, sequence_number: 1 },
  { step: feelings, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: sounds, sequence_number: 5 },
  { step: lie_down, sequence_number: 6 }])

calm.sequences.create!([{ step: feelings, sequence_number: 1 },
  { step: walk, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: breathing, sequence_number: 5 }])

mindfulness.sequences.create!([{ step: breathing, sequence_number: 1 },
  { step: sounds, sequence_number: 2 },
  { step: colours, sequence_number: 3 },
  { step: shapes, sequence_number: 4 },
  { step: temp, sequence_number: 5 },
  { step: smell, sequence_number: 6 }])

happiness.sequences.create!([{ step: walk, sequence_number: 1 },
  { step: achieve, sequence_number: 2 },
  { step: celebrate, sequence_number: 3 },
  { step: smile, sequence_number: 4 },
  { step: laugh, sequence_number: 5 }])

confidence.sequences.create!([{ step: achieve, sequence_number: 1 },
  { step: walk, sequence_number: 2 },
  { step: celebrate, sequence_number: 3 },
  { step: feedback, sequence_number: 4 }])
