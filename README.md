# My First Project in Jac
## Personal Fitness Coach

This is a personal fitness coach system to help with fitness. This system collects users' inputs like age, gender, available time, etc, and helps to generate a  workout plan and a motivational message. 

### The Nodes(Inputs) include:
- `Age`   
- `Gender`   
- `Fitness Goal`   
- `Available Time` 

### Walker(Coach):
This functionality helps pass the data into Gemini.

### Function(Plan & Motivation):
Our function for this application is to generate the workout plan & motivational message.

## Execution
1. Installation of the `byLLM` plugin:

```bash
pip install byllm
```
2. Get your free Gemini Key from Google and set it up:

```bash
export GEMINI_API_KEY="YOUR_API_KEY_HERE"
```
3. Run Jac Program:

```bash
jac run fitness_coach.jac
```
# Expected Output:

```text
🏋️ Your Personalized Fitness Plan 🏋️
Okay, here's a workout plan based on the information provided:

**Daily Workout Plan for Weight Loss (30 minutes)**

*   **Warm-up (5 minutes):**
    *   Jumping jacks (1 minute)
    *   High knees (1 minute)
    *   Butt kicks (1 minute)
    *   Arm circles (forward and backward, 2 minutes)

*   **Cardio (15 minutes):**
    *   Brisk walking or jogging (15 minutes)
    *   *Alternative (choose one):*
        *   Cycling (15 minutes)
        *   Jumping rope (15 minutes)
        *   Dancing (15 minutes)

*   **Strength Training (5 minutes):**
    *   Bodyweight squats (10 reps)
    *   Push-ups (as many as possible)
    *   Lunges (10 reps per leg)
    *   Plank (30 seconds)

*   **Cool-down (5 minutes):**
    *   Stretching (hold each stretch for 30 seconds):
        *   Hamstring stretch
        *   Quadriceps stretch
        *   Calf stretch
        *   Triceps stretch
        *   Shoulder stretch


💡 Motivation 💡
- Remember why you started. Keep your goal in mind!
- Consistency is key. Even small steps add up over time.
- Don't be too hard on yourself. It's okay to have off days. Just get back on track the next day.
- Celebrate small victories to stay motivated.
- Visualize your success to keep your eye on the prize.
- You've got this! Stay committed, and you'll see results.
- Your health is worth the effort. Keep investing in yourself!

```
## Future Adjustments:
I will be enabling the user to enter their age, gender, and goal interactively!
