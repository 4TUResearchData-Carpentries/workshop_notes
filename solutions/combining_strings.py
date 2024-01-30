def fence(original, wrapper):
    return wrapper + original + wrapper

print(fence('name', '*'))