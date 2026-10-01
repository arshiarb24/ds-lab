{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyPdQNMVDinRoFAWe/c6FhjU",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/creation.bst\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "class Node:\n",
        "    # Constructor to create a new node\n",
        "    def __init__(self, key):\n",
        "        self.data = key\n",
        "        self.left = None\n",
        "        self.right = None\n",
        "\n",
        "def insert(node, data):\n",
        "    if node is None:\n",
        "        return Node(data)\n",
        "    else:\n",
        "        if data <= node.data:\n",
        "            node.left = insert(node.left, data)\n",
        "        else:\n",
        "            node.right = insert(node.right, data)\n",
        "    return node\n",
        "\n",
        "def minValue(node):\n",
        "    current = node\n",
        "    while current.left is not None:\n",
        "        current = current.left\n",
        "    return current.data\n",
        "\n",
        "root = None\n",
        "root = insert(root, 4)\n",
        "insert(root, 2)\n",
        "insert(root, 1)\n",
        "insert(root, 3)\n",
        "insert(root, 6)\n",
        "insert(root, 5)\n",
        "\n",
        "print(\"\\nMinimum value in BST is %d\" % (minValue(root)))"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "MyM4cq1qWAch",
        "outputId": "51be125e-cc75-48ad-adb8-55540c293a01"
      },
      "execution_count": 8,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "\n",
            "Minimum value in BST is 1\n"
          ]
        }
      ]
    }
  ]
}