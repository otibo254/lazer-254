# Personal Fitness Coach System
import from byllm { Model }

# Initialize Gemini LLM
glob llm = Model(model_name="gemini/gemini-2.0-flash");

# ==== Define User Data Nodes ====
node User{}

node Age(User){
    has age: int = 25;
    can check with Coach entry {
        visitor.data["age"] = self.age;
    }
}

node Gender(User){
    has gender: str = "Female";
    can check with Coach entry {
        visitor.data["gender"] = self.gender;
    }
}

node FitnessGoal(User){
    has goal: str = "weight loss"; 
    can check with Coach entry {
        visitor.data["goal"] = self.goal;
    }
}

node AvailableTime(User){
    has time_per_day: int = 30; # in minutes
    can check with Coach entry {
        visitor.data["time_per_day"] = self.time_per_day;
    }
}

# ==== Record node for storing results ====
node Record{
    can store with Coach entry {
        visitor.data["plan"] = visitor.create_plan(visitor.data);
        visitor.data["tips"] = visitor.motivation(visitor.data);
    }
}

# ==== Walker (the AI coach) ====
walker Coach{
    has data: dict = {};
    can start with `root entry {
        visit [-->(`?User)];
        visit [-->(`?Record)];
    }

    """You are a virtual fitness coach. 
    Based on age, gender, fitness goal, and available workout time,
    create a simple daily workout plan."""
    def create_plan(data: dict) -> str by llm();

    """Give the user motivational tips and reminders 
    to stay consistent with their fitness journey."""
    def motivation(data: dict) -> str by llm();
}

# ==== Main program ====
with entry {
    root ++> Age();
    root ++> Gender();
    root ++> FitnessGoal();
    root ++> AvailableTime();
    root ++> Record();

    agent = Coach() spawn root;
    print("🏋️ Your Personalized Fitness Plan 🏋️");
    print(agent.data['plan']);
    print("\n💡 Motivation 💡");
    print(agent.data['tips']);
}
