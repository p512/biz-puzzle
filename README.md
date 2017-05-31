# Biz constraint puzzle

Solves the biz constraint puzzle

Each row and column must have a specific number of set fields.

# Usage

```bash
$ clingo first.lp biz.lp| ./visualizer.py 
  ██ █  
  █  █  
  ██ █  
  █  █  
  █  █  
        
████████
        
  █  █  
  █  █  
  ████  
     █  
     █  
```

# Example puzzle

See `first.lp` for encoding

![puzzle](./img.jpg)
