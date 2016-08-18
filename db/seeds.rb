# Thoughts
relaxation = Thought.create!(name: 'Relaxation')
calm = Thought.create!(name: 'Calm')
mindfulness = Thought.create!(name: 'Mindfulness')

# Steps
walk = Step.create!(name: 'Walk', description: 'Go for a walk. Breathe in the fresh air.', mindfulness: false)
feelings = Step.create!(name: 'Feelings', description: "Notice your feelings. Accept how you're currently feeling.", mindfulness: false)
sounds = Step.create!(name: 'Sounds', description: 'Notice the sounds around you. Are they loud or soft? High-pitched or low-pitched?', mindfulness: true)
colours = Step.create!(name: 'Colours', description: 'Notice the colours around you. Are they bright or pastel? Warm or cool?', mindfulness: true)
breathing = Step.create!(name: 'Breathing', description: 'Take notice of your breathing. Breathe in slowly, breathe out slowly. Breathe in slowly, breathe out slowly.', mindfulness: true)
breathe = Step.create!(name: 'Breathe', description: 'Take a deep breath', mindfulness: false)
count = Step.create!(name: 'Count', description: 'Count to 10', mindfulness: false)
shapes = Step.create!(name: 'Shapes', description: 'Notice the shapes around you. Are they round? square? rectangular? triangular?', mindfulness: true)
temp = Step.create!(name: 'Temperature', description: 'Notice the temperatures around you. Are they warm, cool, cold or hot?', mindfulness: true)

# Sequences
relaxation.sequences.create!([{ step: walk, sequence_number: 1 },
  { step: feelings, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: sounds, sequence_number: 5 }])

calm.sequences.create!([{ step: feelings, sequence_number: 1 },
  { step: walk, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: breathing, sequence_number: 5 }])

mindfulness.sequences.create!([{ step: breathing, sequence_number: 1 },
  { step: sounds, sequence_number: 2 },
  { step: colours, sequence_number: 3 },
  { step: shapes, sequence_number: 4 },
  { step: temp, sequence_number: 5 }])