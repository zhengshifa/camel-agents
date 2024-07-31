import os

from apps.agents.agents import construct_blocks, parse_arguments

if __name__ == "__main__":

    api_key = os.environ["OPENAI_API_KEY"]

    args = parse_arguments()
    blocks = construct_blocks(api_key)
    blocks.queue(args.concurrency_count)
    blocks.launch()
