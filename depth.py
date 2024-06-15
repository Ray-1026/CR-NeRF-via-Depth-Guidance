import torch
import os


repo = "isl-org/ZoeDepth"
zoe = torch.hub.load(repo, "ZoeD_N", pretrained=True)
zoe.eval()

from PIL import Image
# Colorize output
from zoedepth.utils.misc import colorize

for i, f in enumerate(os.listdir("dataset/brandenburg_gate/dense/images")):
    print(i)

    image = Image.open(os.path.join("dataset/brandenburg_gate/dense/images", f)).convert("RGB")  # load
    depth = zoe.infer_pil(image)  # as numpy
    colored = colorize(depth)[..., :3]

    # save colored output
    fpath_colored = f"depth/{f}"
    Image.fromarray(colored).save(fpath_colored)

    if i==20:
        break